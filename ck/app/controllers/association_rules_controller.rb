class AssociationRulesController < ApplicationController
  def index
    year = params["nam_id"]
    year = 2012 if year.blank?
    puts "con mèo #{year}"
    @year = [["2012","2012"],["2013","2013"],["2014","2014"],["2015","2015"]]
    @rules = []
    @rules = AssociationRule.build_rule(year)
    puts "rule #{@rules}"
    @rules = AssociationRule.get_rules(@rules)

    sql = "select ticker,year, v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14,v15,v16,current_assets,cash_and_cash_euivalents,short_term_financial_investment,short_term_account_receivables,inventory,other_current_assets,non_current_assets,long_term_account_receivable,fixed_assets,loi_the_thuong_mai,real_estate_investment,long_term_finacial_investments,other_long_term_assets,total_assets,liabilities,short_term_liabilities,long_term_liabilities,owners_equity,loi_ich_co_dong_thieu_so,gross_sale_revenues,deduction_revenues,net_sales,cost_of_goods_sold,gross_profit,financial_activities_revenues,financial_expenses,selling_expenses,managing_expenses,net_profit_from_operating_activities,other_incomes,other_expenses,other_profits,total_profit_before_tax,profit_after_corporate_income_tax,ebitda from financial_reports_2012 where year is not null order by id"
    @data = FinancialReport.connection.execute(sql)
  end
end
