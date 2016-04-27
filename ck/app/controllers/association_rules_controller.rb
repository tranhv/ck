class AssociationRulesController < ApplicationController
  def index
    year = params[:year]
    @year = [["Tất cả","ALL"],["2012","2012"],["2013","2013"],["2014","2014"],["2015","2015"]]
    rules = ""
    if year == "Tất Cả"
      
    else
      year = "2012"
      rules = AssociationRule.build_rule(year)
    end
    rules
  end
end
