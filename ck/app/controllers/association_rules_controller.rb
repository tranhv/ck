class AssociationRulesController < ApplicationController
  def index
    year = params[:year]
    rules = AssociationRule.build_rule(year)
  end
end
