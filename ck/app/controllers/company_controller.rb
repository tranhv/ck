class CompanyController < ApplicationController
  
  # Comment for functional
  def show 
    com_id = params[:id]
    @com = Company.where(['id = ?', com_id]).first
    @data = {}
    reports = FinancialReport.where(:ticker => @com.ma_ck)

    reports.map { |e| 
      if @data[e.year]
        @data[e.year] << e 
      else
        @data[e.year] = []
      end
    }
  end
end
