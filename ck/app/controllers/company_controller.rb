# Company controller

# Con bo con heo
class CompanyController < ApplicationController
    def   index

    end

  # Comment for functional
  def show 
    com_id = params[:id]
    @com = Company.where(['id = ?', com_id]).first
  end
end
