require 'mechanize'

namespace :ck do
  desc "Down load data from web"
  task down_data: :environment do
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
end
