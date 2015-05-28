class HomeController < ApplicationController
	def index
	@san = [["Tất cả",1],["HOSE",2],["HNX",3]]
    @data_companies = Company.where("ma_ck in (select ma_ck from company_businesses where ma_nganh =1)")
	end
end
