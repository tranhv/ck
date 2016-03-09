--select count(distinct (ticker, year, quater)) from financial_reports
--select count(*) from financial_reports limit 1;
--select * from financial_report_indexs limit 1;

--select * from schema_migrations
--delete from schema_migrations where version = '20160131072933'
--drop table financial_report_indexs;
--drop table financial_report_index_codes;

--select * from financial_reports limit 1;

update financial_reports
set f1 = round((case when net_sales != 0 then  profit_after_corporate_income_tax/net_sales else null end)::decimal,5),
f2 = round((case when total_assets != 0 then  profit_after_corporate_income_tax/total_assets else null end)::decimal,5),
f3 = round((case when total_assets != 0 then  total_profit_before_tax/total_assets else null end)::decimal,5),
f4 = round((case when total_assets != 0 then  (profit_after_corporate_income_tax - other_profits)/total_assets else null end)::decimal,5),
f5 = round((case when owners_equity != 0 then  (profit_after_corporate_income_tax - other_profits)/owners_equity else null end)::decimal,5),
f6 = round((case when short_term_liabilities != 0 then  cash_and_cash_euivalents/short_term_liabilities else null end)::decimal,5),
f7 = round((case when total_assets != 0 then  net_sales/total_assets else null end)::decimal,5),
f8 = round((case when inventory != 0 then  cost_of_goods_sold/inventory else null end)::decimal,5),
f9 = round((case when net_sales != 0 then  (short_term_account_receivables+long_term_account_receivable)/net_sales else null end)::decimal,5),
f10 = round((case when owners_equity != 0 then  liabilities/owners_equity else null end)::decimal,5),
f11 = round((case when owners_equity != 0 then  total_assets/owners_equity else null end)::decimal,5),
f12 = round((case when total_assets != 0 then  long_term_liabilities/total_assets else null end)::decimal,5),
f13 = round((case when total_assets != 0 then  liabilities/total_assets else null end)::decimal,5),
f14 = round((case when short_term_liabilities != 0 then  current_assets/short_term_liabilities else null end)::decimal,5),
f15 = round((case when short_term_liabilities != 0 then  (current_assets - inventory)/short_term_liabilities else null end)::decimal,5),
f16 = round((case when total_assets != 0 then  cash_and_cash_euivalents/total_assets else null end)::decimal,5);


