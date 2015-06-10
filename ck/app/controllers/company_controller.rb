class CompanyController < ApplicationController
  def index
  	
  end
  def show 	
  	com_id = params[:id]
  	@com = Company.where(["id = ?", com_id]).first
  end
end
