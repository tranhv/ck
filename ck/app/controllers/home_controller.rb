
class HomeController < ApplicationController
    def index
      san_id = params[:san_id]
      @san = [["Tất cả","ALL"],["HOSE","HOSE"],["HASTC","HASTC"]]
      if san_id
        @data_companies = Company.where("ma_ck in (select ma_ck from company_businesses where ma_nganh =1) and san_ck = '#{san_id}'")
      else
        @data_companies = Company.where("ma_ck in (select ma_ck from company_businesses where ma_nganh =1)")      
      end
      
      @data_companies
    end
end
