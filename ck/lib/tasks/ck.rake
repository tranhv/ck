require 'mechanize'
require 'csv'
require 'yaml'
require 'zip'

namespace :ck do

  desc "new app"
  task :full_app => :environment do
    puts "Importing full data"
    `rake ck:import_stock_daily_full`
    `rake ck:import_financial`
    `rake ck:import_data`
    puts "Imported full data"
  end

  desc "import stock daily full"
  task :import_stock_daily_full => :environment do
    p "import stock daily - #{Time.now}"
    link_config = YAML.load_file("#{Rails.root}/data/links.yml")

    #login
    agent = Mechanize.new
    agent.follow_meta_refresh = true
    page = agent.get(link_config["link_login"])
    form = page.form_with(:action => 'login.php')
    form.username  = "tran_tran2004@yahoo.com"
    form.tpassword = "075763905"
    a = agent.submit(form, form.buttons.first)

    url = link_config["link_stock_ticket"]
    
    #down load + save file
    File.delete("#{Rails.root}/data/stock_tmp.txt") if File.exist?("#{Rails.root}/data/stock_tmp.txt")
    File.delete("#{Rails.root}/data/stock_tmp.zip") if File.exist?("#{Rails.root}/data/stock_tmp.zip")
    agent.get("#{url}").save("#{Rails.root}/data/stock_tmp.zip")
    if a.body.include? "Sai Email"
      puts 'fail'
    else
      puts 'success'
    end

    Zip::ZipFile.open("#{Rails.root}/data/stock_tmp.zip") do |zipfile|
      zipfile.each do |file|
        puts file.name
        zipfile.extract(file, "#{Rails.root}/data/stock_tmp.txt")
      end
    end
    #Insert database
    sql = <<-SQL
      truncate stocks;
      copy stocks(ticker,date,open,high,low,close,volume)
      from '#{Rails.root}/data/stock_tmp.txt' delimiter ',' CSV header;
    SQL
    ActiveRecord::Base.connection.execute(sql)
  end

  desc "import_financial"
  task :import_financial =>  :environment do
    sql = <<-SQL
      truncate financial_reports;
      copy financial_reports(ticker,year,quater,current_assets,cash_and_cash_euivalents,short_term_financial_investment,short_term_account_receivables,inventory,other_current_assets,non_current_assets,long_term_account_receivable,fixed_assets,loi_the_thuong_mai,real_estate_investment,long_term_finacial_investments,other_long_term_assets,total_assets,liabilities,short_term_liabilities,long_term_liabilities,owners_equity,loi_ich_co_dong_thieu_so,total_equity,gross_sale_revenues,deduction_revenues,net_sales,cost_of_goods_sold,gross_profit,financial_activities_revenues,financial_expenses,selling_expenses,managing_expenses,net_profit_from_operating_activities,other_incomes,other_expenses,other_profits,total_profit_before_tax,profit_after_corporate_income_tax,ebitda)
      from '#{Rails.root}/data/bao_cao_tai_chinh_20150430.txt' delimiter '\t' CSV header;;
    SQL
    ActiveRecord::Base.connection.execute(sql)
  end

  desc "import stock daily"
  task :import_stock_daily,[:start_date,:end_date] => :environment do |t,args|
    p "import stock daily from #{args[:start_date]} to #{args[:end_date]} - #{Time.now}"
    link_config = YAML.load_file("#{Rails.root}/data/links.yml")

    #login
    agent = Mechanize.new
    agent.follow_meta_refresh = true
    page = agent.get(link_config["link_login"])
    form = page.form_with(:action => 'login.php')
    form.username  = "tran_tran2004@yahoo.com"
    form.tpassword = "075763905"
    a = agent.submit(form, form.buttons.first)

    url = link_config["link_stock_daily"]
     
    start_date = Date.strptime(args[:start_date].to_s, '%Y-%m-%d')
    end_date = Date.strptime(args[:end_date].to_s, '%Y-%m-%d')
    
    (start_date..end_date).each do |date|
      #down load + save file
      File.delete("#{Rails.root}/data/stock_daily_tmp.txt") if File.exist?("#{Rails.root}/data/stock_daily_tmp.txt")
      agent.get("#{url}#{date.strftime}").save("#{Rails.root}/data/stock_daily_tmp.txt")
      if a.body.include? "Sai Email"
        puts 'fail'
      else
        puts 'success'
      end

      #Insert database
      sql = <<-SQL
        copy stocks(ticker,date,open,high,low,close,volume)
        from '#{Rails.root}/data/stock_daily_tmp.txt' delimiter ',' CSV header;
      SQL
      ActiveRecord::Base.connection.execute(sql)
    end
  end


  task :test => :environment do
    
  end

  desc "Import data"
  task :import_data => :environment do
    puts "Import Data"

    sql = <<-SQL
      truncate company_businesses;
      truncate businesses;
      truncate companies; 
    SQL
    
    #import company_businesses
    File.readlines("#{Rails.root}/db/cong_ty_nganh.txt").each do |l|
      next if l.strip.blank?
      ma_ck,ma_nganh = l.gsub("\n","").split("\t")
      CompanyBusiness.new(:ma_ck => ma_ck, :ma_nganh => ma_nganh).save
    end

    #import businesses
    File.readlines("#{Rails.root}/db/danh_sach_nganh.txt").each do |l|
      next if l.strip.blank?
      ma_nganh,ten_nganh = l.gsub("\n","").split("\t")
      Business.new(:ma_nganh => ma_nganh, :ten_nganh => ten_nganh).save
    end

    #import companies
    File.readlines("#{Rails.root}/db/company_list.txt").each do |l|
      next if l.strip.blank?
      com = Company.new
      com.ma_ck,com.san_ck,com.gia_hien_tai,com.gia_so_sach,com.p_d,com.cao_nhat_52_tuan,com.thap_nhat_52_tuan,com.eps,com.pe,com.roa,com.roe,com.beta,com.khoi_luong_luu_hanh,com.khoi_luong_niem_yet,com.co_phieu_quy,com.nuoc_ngoai_so_huu,com.von_thi_truong,com.danh_thu_ttm_trieu,com.lnst_ttm,com.von_csh,com.tong_no,com.tong_tai_san,com.ten_cong_ty,com.ten_quoc_te,com.dia_chi,com.dien_thoai,com.fax,com.website = l.gsub("\n","").split("\t")
      com.save
    end
  end

  task :calc_index => :environment do
    
    #update f1 .. f16
    sql = <<-SQL
    update financial_reports
    set f1 = round((case when net_sales != 0 then  profit_after_corporate_income_tax/net_sales else null end)::decimal,5),
    f2 = round((case when total_assets != 0 then  profit_after_corporate_income_tax/total_assets else null end)::decimal,5),
    f3 = round((case when total_assets != 0 then  total_profit_before_tax/total_assets else null end)::decimal,5),
    f4 = round((case when total_assets != 0 then  (profit_after_corporate_income_tax - other_profits)/total_assets else null end)::decimal,5),
    f5 = round((case when owners_equity != 0 then  (profit_after_corporate_income_tax - other_profits)/owners_equity else null end)::decimal,5),
    f6 = round((case when short_term_liabilities != 0 then  cash_and_cash_euivalents/short_term_liabilities else null end)::decimal,5),
    f7 = round((case when total_assets != 0 then  net_sales/total_assets else null end)::decimal,5),
    f8 = round((case when inventory != 0 then  cost_of_goods_sold/inventory else null end)::decimal,5),
    f9 = round((case when net_sales != 0 then  (short_term_account_receivables+long_term_account_receivable)/net_sales else null end)::decimal,5),
    f10 = round((case when owners_equity != 0 then  liabilities/owners_equity else null end)::decimal,5),
    f11 = round((case when owners_equity != 0 then  total_assets/owners_equity else null end)::decimal,5),
    f12 = round((case when total_assets != 0 then  long_term_liabilities/total_assets else null end)::decimal,5),
    f13 = round((case when total_assets != 0 then  liabilities/total_assets else null end)::decimal,5),
    f14 = round((case when short_term_liabilities != 0 then  current_assets/short_term_liabilities else null end)::decimal,5),
    f15 = round((case when short_term_liabilities != 0 then  (current_assets - inventory)/short_term_liabilities else null end)::decimal,5),
    f16 = round((case when total_assets != 0 then  cash_and_cash_euivalents/total_assets else null end)::decimal,5);
    SQL 
    
    #Find years and quater
    # years = [{"year" => "2013", "quater" => "nil"}, {"year" => "2013", "quater" => "1"}
    years = FinancialReport.select("distinct year, quater").order("year, quater").map{ |e| {"year" => e.year,"quater" => e.quater}}
    
    years.each do |year|
      count = FinancialReport.where(:year => year["year"], :quater => year["quater"]).count
      averages = FinancialReport.where(:year => year["year"], :quater => year["quater"]).select("AVG(f1) avg_f1,AVG(f2) avg_f2,AVG(f3) avg_f4,AVG(f5) avg_f5,AVG(f6) avg_f6,AVG(f7) avg_f7,AVG(f8) avg_f8,AVG(f9) avg_f9,AVG(f10) avg_f10,AVG(f11) avg_f11,AVG(f12) avg_f13,AVG(f14) avg_f14,AVG(f15) avg_f15,AVG(f16) avg_f16")
      averages = 
      
      variance = 


    end    
  end

  def method_name
    
  end

  def mean(x)
  sum=0
  x.each {|v| sum += v}
  sum/x.size
end
def variance(x)
  m = mean(x)
  sum =0.0
  x.each {|v| sum += (v-m)**2 }
  sum/x.size
end

def test 
  
  data = [2,3,2,2,3,4,5,5,4,3,4,1,2 ]

  puts variance(data)  # 1.461538462

end

  def method_name
    
  end

end
