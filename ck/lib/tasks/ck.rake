require 'mechanize'
require 'csv'
require 'yaml'
require 'zip'

namespace :ck do
  desc "Down load data from web"
  task :down_data => :environment do
    puts "down_data #{Time.now}"
    url = "http://www.cophieu68.vn/export/metastock.php?id=^vnindex"
    url_login ="http://www.cophieu68.vn/account/login.php"    
    
    agent = Mechanize.new
    agent.follow_meta_refresh = true
    page = agent.get(url_login)
    form = page.form_with(:action => 'login.php')
    form.username  = "tran_tran2004@yahoo.com"
    form.tpassword = "075763905"
    a = agent.submit(form, form.buttons.first)    
    agent.get(url).save("/Users/mc976/ck/tmp.txt")
    if a.body.include? "Sai Email"
      puts 'fail'
    else
      puts 'success'
    end
  end

  desc "import stock daily"
  task :import_stock_daily_all => :environment do
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
      copy stocks(ticker,date,open,high,low,close,volume)
      from '#{Rails.root}/data/stock_tmp.txt' delimiter ',' CSV header;
    SQL
    ActiveRecord::Base.connection.execute(sql)
  end


  task :test => :environment do
    
  end

  desc "Import data"
  task :import_data => :environment do
    puts "Import Data"
    
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

end
