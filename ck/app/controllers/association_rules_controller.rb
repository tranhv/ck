class AssociationRulesController < ApplicationController
  def index
    year = params["nam_id"]
    puts "con mèo #{year}"
    @year = [["Tất cả","ALL"],["2012","2012"],["2013","2013"],["2014","2014"],["2015","2015"]]
    @rules = []
    if year == "Tất Cả"
      
    else
      @rules = AssociationRule.build_rule(year)
      puts "rule #{@rules}"
      @rules = AssociationRule.get_rules(@rules)
    end
  end
end
