BEGIN;
DELETE FROM :table_name
WHERE ticker in ('TrungBinh','PhuongSai','Min','Max','Delta','string_5');


insert into :table_name(ticker) values('TrungBinh');
insert into :table_name(ticker) values('PhuongSai');

insert into :table_name(ticker) values('Min');
insert into :table_name(ticker) values('Max');
insert into :table_name(ticker) values('Delta');
insert into :table_name(ticker) values('string_5');

CREATE OR REPLACE FUNCTION update_status2(float, text) --value,string_5
  RETURNS TEXT AS
$BODY$
     BEGIN  
  RETURN (case when split_part($2,'_',1)::float <= $1 and $1 < split_part($2,'_',2)::float then 'very_low'
           when  split_part($2,'_',2)::float <= $1 and $1 < split_part($2,'_',3)::float then 'low'
           when  split_part($2,'_',3)::float <= $1 and $1 < split_part($2,'_',4)::float then 'middle'
           when  split_part($2,'_',4)::float <= $1 and $1 < split_part($2,'_',5)::float then 'high'
           when  split_part($2,'_',5)::float <= $1 and $1 <= split_part($2,'_',6)::float then 'very_high'
      end);
     END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION update_status2(float, text)
  OWNER TO postgres;

  CREATE OR REPLACE FUNCTION update_status(float, float, float, float) --value,delta,min,max
  RETURNS TEXT AS
$BODY$
     BEGIN  
  RETURN (case when $3 <= $1 and $1 < ($3 + $2) then 'very_low'
           when  ($3 + $2) <= $1 and $1 < ($3 + 2*$2) then 'low'
           when  ($3 + 2*$2) <= $1 and $1 < ($3 + 3*$2) then 'middle'
           when  ($3 + 3*$2) <= $1 and $1 < ($3 + 4*$2) then 'high'
           when  ($3 + 4*$2) <= $1 and $1 <= ($4) then 'very_high'
      end);
     END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION update_status(float, float, float,float)
  OWNER TO postgres;

update :table_name
set time = year::text || (case when quater is null then '' else '-' || quater::text end);


update :table_name
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


update :table_name
set f1 =round( (select sum( f1 )/(select count(*) - 6 from :table_name) from :table_name where time is not null)::decimal,5),
f2 =round( (select sum( f2 )/(select count(*) - 6 from :table_name) from :table_name where time is not null)::decimal,5),
f3 =round( (select sum( f3 )/(select count(*) - 6 from :table_name) from :table_name where time is not null)::decimal,5),
f4 =round( (select sum( f4 )/(select count(*) - 6 from :table_name) from :table_name where time is not null)::decimal,5),
f5 =round( (select sum( f5 )/(select count(*) - 6 from :table_name) from :table_name where time is not null)::decimal,5),
f6 =round( (select sum( f6 )/(select count(*) - 6 from :table_name) from :table_name where time is not null)::decimal,5),
f7 =round( (select sum( f7 )/(select count(*) - 6 from :table_name) from :table_name where time is not null)::decimal,5),
f8 =round( (select sum( f8 )/(select count(*) - 6 from :table_name) from :table_name where time is not null)::decimal,5),
f9 =round( (select sum( f9 )/(select count(*) - 6 from :table_name) from :table_name where time is not null)::decimal,5),
f10 =round( (select sum( f10 )/(select count(*) - 6 from :table_name) from :table_name where time is not null)::decimal,5),
f11 =round( (select sum( f11 )/(select count(*) - 6 from :table_name) from :table_name where time is not null)::decimal,5),
f12 =round( (select sum( f12 )/(select count(*) - 6 from :table_name) from :table_name where time is not null)::decimal,5),
f13 =round( (select sum( f13 )/(select count(*) - 6 from :table_name) from :table_name where time is not null)::decimal,5),
f14 =round( (select sum( f14 )/(select count(*) - 6 from :table_name) from :table_name where time is not null)::decimal,5),
f15 =round( (select sum( f15 )/(select count(*) - 6 from :table_name) from :table_name where time is not null)::decimal,5),
f16 =round( (select sum( f16 )/(select count(*) - 6 from :table_name) from :table_name where time is not null)::decimal,5)
where ticker = 'TrungBinh';

update :table_name
set f1 =round( (select variance( f1 ) from :table_name where time is not null)::decimal,5),
f2 =round( (select variance( f2 ) from :table_name where time is not null)::decimal,5),
f3 =round( (select variance( f3 ) from :table_name where time is not null)::decimal,5),
f4 =round( (select variance( f4 ) from :table_name where time is not null)::decimal,5),
f5 =round( (select variance( f5 ) from :table_name where time is not null)::decimal,5),
f6 =round( (select variance( f6 ) from :table_name where time is not null)::decimal,5),
f7 =round( (select variance( f7 ) from :table_name where time is not null)::decimal,5),
f8 =round( (select variance( f8 ) from :table_name where time is not null)::decimal,5),
f9 =round( (select variance( f9 ) from :table_name where time is not null)::decimal,5),
f10 =round( (select variance( f10 ) from :table_name where time is not null)::decimal,5),
f11 =round( (select variance( f11 ) from :table_name where time is not null)::decimal,5),
f12 =round( (select variance( f12 ) from :table_name where time is not null)::decimal,5),
f13 =round( (select variance( f13 ) from :table_name where time is not null)::decimal,5),
f14 =round( (select variance( f14 ) from :table_name where time is not null)::decimal,5),
f15 =round( (select variance( f15 ) from :table_name where time is not null)::decimal,5),
f16 =round( (select variance( f16 ) from :table_name where time is not null)::decimal,5)
where ticker = 'PhuongSai';


update :table_name
set
z1 = round((( f1 - (select f1 from :table_name where ticker = 'TrungBinh'))/(select  f1 from :table_name where ticker = 'PhuongSai'))::decimal ,5),
z2 = round((( f2 - (select f2 from :table_name where ticker = 'TrungBinh'))/(select  f2 from :table_name where ticker = 'PhuongSai'))::decimal ,5),
z3 = round((( f3 - (select f3 from :table_name where ticker = 'TrungBinh'))/(select  f3 from :table_name where ticker = 'PhuongSai'))::decimal ,5),
z4 = round((( f4 - (select f4 from :table_name where ticker = 'TrungBinh'))/(select  f4 from :table_name where ticker = 'PhuongSai'))::decimal ,5),
z5 = round((( f5 - (select f5 from :table_name where ticker = 'TrungBinh'))/(select  f5 from :table_name where ticker = 'PhuongSai'))::decimal ,5),
z6 = round((( f6 - (select f6 from :table_name where ticker = 'TrungBinh'))/(select  f6 from :table_name where ticker = 'PhuongSai'))::decimal ,5),
z7 = round((( f7 - (select f7 from :table_name where ticker = 'TrungBinh'))/(select  f7 from :table_name where ticker = 'PhuongSai'))::decimal ,5),
z8 = round((( f8 - (select f8 from :table_name where ticker = 'TrungBinh'))/(select  f8 from :table_name where ticker = 'PhuongSai'))::decimal ,5),
z9 = round((( f9 - (select f9 from :table_name where ticker = 'TrungBinh'))/(select  f9 from :table_name where ticker = 'PhuongSai'))::decimal ,5),
z10 = round((( f10 - (select f10 from :table_name where ticker = 'TrungBinh'))/(select  f10 from :table_name where ticker = 'PhuongSai'))::decimal ,5),
z11 = round((( f11 - (select f11 from :table_name where ticker = 'TrungBinh'))/(select  f11 from :table_name where ticker = 'PhuongSai'))::decimal ,5),
z12 = round((( f12 - (select f12 from :table_name where ticker = 'TrungBinh'))/(select  f12 from :table_name where ticker = 'PhuongSai'))::decimal ,5),
z13 = round((( f13 - (select f13 from :table_name where ticker = 'TrungBinh'))/(select  f13 from :table_name where ticker = 'PhuongSai'))::decimal ,5),
z14 = round((( f14 - (select f14 from :table_name where ticker = 'TrungBinh'))/(select  f14 from :table_name where ticker = 'PhuongSai'))::decimal ,5),
z15 = round((( f15 - (select f15 from :table_name where ticker = 'TrungBinh'))/(select  f15 from :table_name where ticker = 'PhuongSai'))::decimal ,5),
z16 = round((( f16 - (select f16 from :table_name where ticker = 'TrungBinh'))/(select  f16 from :table_name where ticker = 'PhuongSai'))::decimal ,5);

update :table_name
set v1 = (select min( z1 ) from :table_name where time is not null)::text || '_' || (select max( z1  ) from (select z1  from :table_name where time is not null order by z1  limit 11) as a)::text || '_' || (select max( z1  ) from (select z1  from :table_name where time is not null order by z1  limit 22) as a)::text || '_' || (select max( z1  ) from (select z1  from :table_name where time is not null order by z1  limit 34) as a)::text || '_' || (select max( z1 ) from (select z1 from :table_name where time is not null order by z1 limit 45) as a)::text || '_' || (select max(  z1 ) from :table_name where time is not null)::text,
v2 = (select min( z2 ) from :table_name where time is not null)::text || '_' || (select max( z2  ) from (select z2  from :table_name where time is not null order by z2  limit 11) as a)::text || '_' || (select max( z2  ) from (select z2  from :table_name where time is not null order by z2  limit 22) as a)::text || '_' || (select max( z2  ) from (select z2  from :table_name where time is not null order by z2  limit 34) as a)::text || '_' || (select max( z2 ) from (select z2 from :table_name where time is not null order by z2 limit 45) as a)::text || '_' || (select max(  z2 ) from :table_name where time is not null)::text,
v3 = (select min( z3 ) from :table_name where time is not null)::text || '_' || (select max( z3  ) from (select z3  from :table_name where time is not null order by z3  limit 11) as a)::text || '_' || (select max( z3  ) from (select z3  from :table_name where time is not null order by z3  limit 22) as a)::text || '_' || (select max( z3  ) from (select z3  from :table_name where time is not null order by z3  limit 34) as a)::text || '_' || (select max( z3 ) from (select z3 from :table_name where time is not null order by z3 limit 45) as a)::text || '_' || (select max(  z3 ) from :table_name where time is not null)::text,
v4 = (select min( z4 ) from :table_name where time is not null)::text || '_' || (select max( z4  ) from (select z4  from :table_name where time is not null order by z4  limit 11) as a)::text || '_' || (select max( z4  ) from (select z4  from :table_name where time is not null order by z4  limit 22) as a)::text || '_' || (select max( z4  ) from (select z4  from :table_name where time is not null order by z4  limit 34) as a)::text || '_' || (select max( z4 ) from (select z4 from :table_name where time is not null order by z4 limit 45) as a)::text || '_' || (select max(  z4 ) from :table_name where time is not null)::text,
v5 = (select min( z5 ) from :table_name where time is not null)::text || '_' || (select max( z5  ) from (select z5  from :table_name where time is not null order by z5  limit 11) as a)::text || '_' || (select max( z5  ) from (select z5  from :table_name where time is not null order by z5  limit 22) as a)::text || '_' || (select max( z5  ) from (select z5  from :table_name where time is not null order by z5  limit 34) as a)::text || '_' || (select max( z5 ) from (select z5 from :table_name where time is not null order by z5 limit 45) as a)::text || '_' || (select max(  z5 ) from :table_name where time is not null)::text,
v6 = (select min( z6 ) from :table_name where time is not null)::text || '_' || (select max( z6  ) from (select z6  from :table_name where time is not null order by z6  limit 11) as a)::text || '_' || (select max( z6  ) from (select z6  from :table_name where time is not null order by z6  limit 22) as a)::text || '_' || (select max( z6  ) from (select z6  from :table_name where time is not null order by z6  limit 34) as a)::text || '_' || (select max( z6 ) from (select z6 from :table_name where time is not null order by z6 limit 45) as a)::text || '_' || (select max(  z6 ) from :table_name where time is not null)::text,
v7 = (select min( z7 ) from :table_name where time is not null)::text || '_' || (select max( z7  ) from (select z7  from :table_name where time is not null order by z7  limit 11) as a)::text || '_' || (select max( z7  ) from (select z7  from :table_name where time is not null order by z7  limit 22) as a)::text || '_' || (select max( z7  ) from (select z7  from :table_name where time is not null order by z7  limit 34) as a)::text || '_' || (select max( z7 ) from (select z7 from :table_name where time is not null order by z7 limit 45) as a)::text || '_' || (select max(  z7 ) from :table_name where time is not null)::text,
v8 = (select min( z8 ) from :table_name where time is not null)::text || '_' || (select max( z8  ) from (select z8  from :table_name where time is not null order by z8  limit 11) as a)::text || '_' || (select max( z8  ) from (select z8  from :table_name where time is not null order by z8  limit 22) as a)::text || '_' || (select max( z8  ) from (select z8  from :table_name where time is not null order by z8  limit 34) as a)::text || '_' || (select max( z8 ) from (select z8 from :table_name where time is not null order by z8 limit 45) as a)::text || '_' || (select max(  z8 ) from :table_name where time is not null)::text,
v9 = (select min( z9 ) from :table_name where time is not null)::text || '_' || (select max( z9  ) from (select z9  from :table_name where time is not null order by z9  limit 11) as a)::text || '_' || (select max( z9  ) from (select z9  from :table_name where time is not null order by z9  limit 22) as a)::text || '_' || (select max( z9  ) from (select z9  from :table_name where time is not null order by z9  limit 34) as a)::text || '_' || (select max( z9 ) from (select z9 from :table_name where time is not null order by z9 limit 45) as a)::text || '_' || (select max(  z9 ) from :table_name where time is not null)::text,
v10 = (select min( z10 ) from :table_name where time is not null)::text || '_' || (select max( z10  ) from (select z10  from :table_name where time is not null order by z10  limit 11) as a)::text || '_' || (select max( z10  ) from (select z10  from :table_name where time is not null order by z10  limit 22) as a)::text || '_' || (select max( z10  ) from (select z10  from :table_name where time is not null order by z10  limit 34) as a)::text || '_' || (select max( z10 ) from (select z10 from :table_name where time is not null order by z10 limit 45) as a)::text || '_' || (select max(  z10 ) from :table_name where time is not null)::text,
v11 = (select min( z11 ) from :table_name where time is not null)::text || '_' || (select max( z11  ) from (select z11  from :table_name where time is not null order by z11  limit 11) as a)::text || '_' || (select max( z11  ) from (select z11  from :table_name where time is not null order by z11  limit 22) as a)::text || '_' || (select max( z11  ) from (select z11  from :table_name where time is not null order by z11  limit 34) as a)::text || '_' || (select max( z11 ) from (select z11 from :table_name where time is not null order by z11 limit 45) as a)::text || '_' || (select max(  z11 ) from :table_name where time is not null)::text,
v12 = (select min( z12 ) from :table_name where time is not null)::text || '_' || (select max( z12  ) from (select z12  from :table_name where time is not null order by z12  limit 11) as a)::text || '_' || (select max( z12  ) from (select z12  from :table_name where time is not null order by z12  limit 22) as a)::text || '_' || (select max( z12  ) from (select z12  from :table_name where time is not null order by z12  limit 34) as a)::text || '_' || (select max( z12 ) from (select z12 from :table_name where time is not null order by z12 limit 45) as a)::text || '_' || (select max(  z12 ) from :table_name where time is not null)::text,
v13 = (select min( z13 ) from :table_name where time is not null)::text || '_' || (select max( z13  ) from (select z13  from :table_name where time is not null order by z13  limit 11) as a)::text || '_' || (select max( z13  ) from (select z13  from :table_name where time is not null order by z13  limit 22) as a)::text || '_' || (select max( z13  ) from (select z13  from :table_name where time is not null order by z13  limit 34) as a)::text || '_' || (select max( z13 ) from (select z13 from :table_name where time is not null order by z13 limit 45) as a)::text || '_' || (select max(  z13 ) from :table_name where time is not null)::text,
v14 = (select min( z14 ) from :table_name where time is not null)::text || '_' || (select max( z14  ) from (select z14  from :table_name where time is not null order by z14  limit 11) as a)::text || '_' || (select max( z14  ) from (select z14  from :table_name where time is not null order by z14  limit 22) as a)::text || '_' || (select max( z14  ) from (select z14  from :table_name where time is not null order by z14  limit 34) as a)::text || '_' || (select max( z14 ) from (select z14 from :table_name where time is not null order by z14 limit 45) as a)::text || '_' || (select max(  z14 ) from :table_name where time is not null)::text,
v15 = (select min( z15 ) from :table_name where time is not null)::text || '_' || (select max( z15  ) from (select z15  from :table_name where time is not null order by z15  limit 11) as a)::text || '_' || (select max( z15  ) from (select z15  from :table_name where time is not null order by z15  limit 22) as a)::text || '_' || (select max( z15  ) from (select z15  from :table_name where time is not null order by z15  limit 34) as a)::text || '_' || (select max( z15 ) from (select z15 from :table_name where time is not null order by z15 limit 45) as a)::text || '_' || (select max(  z15 ) from :table_name where time is not null)::text,
v16 = (select min( z16 ) from :table_name where time is not null)::text || '_' || (select max( z16  ) from (select z16  from :table_name where time is not null order by z16  limit 11) as a)::text || '_' || (select max( z16  ) from (select z16  from :table_name where time is not null order by z16  limit 22) as a)::text || '_' || (select max( z16  ) from (select z16  from :table_name where time is not null order by z16  limit 34) as a)::text || '_' || (select max( z16 ) from (select z16 from :table_name where time is not null order by z16 limit 45) as a)::text || '_' || (select max(  z16 ) from :table_name where time is not null)::text
where ticker = 'string_5';

update :table_name
set 
z1 = (select min( z1) from :table_name where time is not null),
z2 = (select min( z2) from :table_name where time is not null),
z3 = (select min( z3) from :table_name where time is not null),
z4 = (select min( z4) from :table_name where time is not null),
z5 = (select min( z5) from :table_name where time is not null),
z6 = (select min( z6) from :table_name where time is not null),
z7 = (select min( z7) from :table_name where time is not null),
z8 = (select min( z8) from :table_name where time is not null),
z9 = (select min( z9) from :table_name where time is not null),
z10 = (select min( z10) from :table_name where time is not null),
z11 = (select min( z11) from :table_name where time is not null),
z12 = (select min( z12) from :table_name where time is not null),
z13 = (select min( z13) from :table_name where time is not null),
z14 = (select min( z14) from :table_name where time is not null),
z15 = (select min( z15) from :table_name where time is not null),
z16 = (select min( z16 ) from :table_name where time is not null)
where ticker = 'Min';

update :table_name
set
z1 = (select max( z1) from :table_name where time is not null),
z2 = (select max( z2) from :table_name where time is not null),
z3 = (select max( z3) from :table_name where time is not null),
z4 = (select max( z4) from :table_name where time is not null),
z5 = (select max( z5) from :table_name where time is not null),
z6 = (select max( z6) from :table_name where time is not null),
z7 = (select max( z7) from :table_name where time is not null),
z8 = (select max( z8) from :table_name where time is not null),
z9 = (select max( z9) from :table_name where time is not null),
z10 = (select max( z10) from :table_name where time is not null),
z11 = (select max( z11) from :table_name where time is not null),
z12 = (select max( z12) from :table_name where time is not null),
z13 = (select max( z13) from :table_name where time is not null),
z14 = (select max( z14) from :table_name where time is not null),
z15 = (select max( z15) from :table_name where time is not null),
z16 = (select max( z16 ) from :table_name where time is not null)
where ticker = 'Max';

update :table_name 
set
z1 = ((select max( z1) from :table_name where time is not null) - (select min( z1) from :table_name where time is not null))/5,
z2 = ((select max( z2) from :table_name where time is not null) - (select min( z2) from :table_name where time is not null))/5,
z3 = ((select max( z3) from :table_name where time is not null) - (select min( z3) from :table_name where time is not null))/5,
z4 = ((select max( z4) from :table_name where time is not null) - (select min( z4) from :table_name where time is not null))/5,
z5 = ((select max( z5) from :table_name where time is not null) - (select min( z5) from :table_name where time is not null))/5,
z6 = ((select max( z6) from :table_name where time is not null) - (select min( z6) from :table_name where time is not null))/5,
z7 = ((select max( z7) from :table_name where time is not null) - (select min( z7) from :table_name where time is not null))/5,
z8 = ((select max( z8) from :table_name where time is not null) - (select min( z8) from :table_name where time is not null))/5,
z9 = ((select max( z9) from :table_name where time is not null) - (select min( z9) from :table_name where time is not null))/5,
z10 = ((select max( z10) from :table_name where time is not null) - (select min( z10) from :table_name where time is not null))/5,
z11 = ((select max( z11) from :table_name where time is not null) - (select min( z11) from :table_name where time is not null))/5,
z12 = ((select max( z12) from :table_name where time is not null) - (select min( z12) from :table_name where time is not null))/5,
z13 = ((select max( z13) from :table_name where time is not null) - (select min( z13) from :table_name where time is not null))/5,
z14 = ((select max( z14) from :table_name where time is not null) - (select min( z14) from :table_name where time is not null))/5,
z15 = ((select max( z15) from :table_name where time is not null) - (select min( z15) from :table_name where time is not null))/5,
z16 = ((select max( z16 ) from :table_name where time is not null) - (select min( z16) from :table_name where time is not null))/5
where ticker = 'Delta';

update :table_name
set
v1 = update_status2( z1 ,(select v1 from :table_name where ticker = 'string_5')),
v2 = update_status2( z2 ,(select v2 from :table_name where ticker = 'string_5')),
v3 = update_status2( z3 ,(select v3 from :table_name where ticker = 'string_5')),
v4 = update_status2( z4 ,(select v4 from :table_name where ticker = 'string_5')),
v5 = update_status2( z5 ,(select v5 from :table_name where ticker = 'string_5')),
v6 = update_status2( z6 ,(select v6 from :table_name where ticker = 'string_5')),
v7 = update_status2( z7 ,(select v7 from :table_name where ticker = 'string_5')),
v8 = update_status2( z8 ,(select v8 from :table_name where ticker = 'string_5')),
v9 = update_status2( z9 ,(select v9 from :table_name where ticker = 'string_5')),
v10 = update_status2( z10 ,(select v10 from :table_name where ticker = 'string_5')),
v11 = update_status2( z11 ,(select v11 from :table_name where ticker = 'string_5')),
v12 = update_status2( z12 ,(select v12 from :table_name where ticker = 'string_5')),
v13 = update_status2( z13 ,(select v13 from :table_name where ticker = 'string_5')),
v14 = update_status2( z14 ,(select v14 from :table_name where ticker = 'string_5')),
v15 = update_status2( z15 ,(select v15 from :table_name where ticker = 'string_5')),
v16 = update_status2( z16 ,(select v16 from :table_name where ticker = 'string_5'))
where time is not null;

update :table_name
set
t1 =update_status( z1 ,(select z1 from :table_name where ticker = 'Delta') ,(select z1 from :table_name where ticker = 'Min') ,(select z1 from :table_name where ticker = 'Max')),
t2 =update_status( z2 ,(select z2 from :table_name where ticker = 'Delta') ,(select z2 from :table_name where ticker = 'Min') ,(select z2 from :table_name where ticker = 'Max')),
t3 =update_status( z3 ,(select z3 from :table_name where ticker = 'Delta') ,(select z3 from :table_name where ticker = 'Min') ,(select z3 from :table_name where ticker = 'Max')),
t4 =update_status( z4 ,(select z4 from :table_name where ticker = 'Delta') ,(select z4 from :table_name where ticker = 'Min') ,(select z4 from :table_name where ticker = 'Max')),
t5 =update_status( z5 ,(select z5 from :table_name where ticker = 'Delta') ,(select z5 from :table_name where ticker = 'Min') ,(select z5 from :table_name where ticker = 'Max')),
t6 =update_status( z6 ,(select z6 from :table_name where ticker = 'Delta') ,(select z6 from :table_name where ticker = 'Min') ,(select z6 from :table_name where ticker = 'Max')),
t7 =update_status( z7 ,(select z7 from :table_name where ticker = 'Delta') ,(select z7 from :table_name where ticker = 'Min') ,(select z7 from :table_name where ticker = 'Max')),
t8 =update_status( z8 ,(select z8 from :table_name where ticker = 'Delta') ,(select z8 from :table_name where ticker = 'Min') ,(select z8 from :table_name where ticker = 'Max')),
t9 =update_status( z9 ,(select z9 from :table_name where ticker = 'Delta') ,(select z9 from :table_name where ticker = 'Min') ,(select z9 from :table_name where ticker = 'Max')),
t10 =update_status( z10 ,(select z10 from :table_name where ticker = 'Delta') ,(select z10 from :table_name where ticker = 'Min') ,(select z10 from :table_name where ticker = 'Max')),
t11 =update_status( z11 ,(select z11 from :table_name where ticker = 'Delta') ,(select z11 from :table_name where ticker = 'Min') ,(select z11 from :table_name where ticker = 'Max')),
t12 =update_status( z12 ,(select z12 from :table_name where ticker = 'Delta') ,(select z12 from :table_name where ticker = 'Min') ,(select z12 from :table_name where ticker = 'Max')),
t13 =update_status( z13 ,(select z13 from :table_name where ticker = 'Delta') ,(select z13 from :table_name where ticker = 'Min') ,(select z13 from :table_name where ticker = 'Max')),
t14 =update_status( z14 ,(select z14 from :table_name where ticker = 'Delta') ,(select z14 from :table_name where ticker = 'Min') ,(select z14 from :table_name where ticker = 'Max')),
t15 =update_status( z15 ,(select z15 from :table_name where ticker = 'Delta') ,(select z15 from :table_name where ticker = 'Min') ,(select z15 from :table_name where ticker = 'Max')),
t16 =update_status( z16 ,(select z16 from :table_name where ticker = 'Delta') ,(select z16 from :table_name where ticker = 'Min') ,(select z16 from :table_name where ticker = 'Max'))
where time is not null;

COMMIT;

