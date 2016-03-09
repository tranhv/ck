drop table if exists companies;
create table companies 
(id serial NOT NULL,
"MaCK" text,
"SanCK" text,
"GiaHienTai" text,
"GiaSoSach" text,
"P/B" text,
"CaoNhat52Tuan" text,
"ThapNhat52Tuan" text,
"EPS" text,
"PE" text,
"ROA" text,
"ROE" text,
"Beta" text,
"KhoiLuongLuuHanh" text,
"KhoiLuongNiemYet" text,
"CoPhieuQuy" text,
"NuocNgoaiSoHuu" text,
"VonThiTruong" text,
"DoanhThu-ttm(Trieu)" text,
"LNST-ttm" text,
"VonCSH" text,
"TongNo" text,
"TongTaiSan" text,
"TenCongTy" text,
"TenQuocTe" text,
"DiaChi" text,
"DienThoai" text,
"Fax" text,
"Website" text,
CONSTRAINT companies_pkey PRIMARY KEY (id)
);

copy companies("MaCK","SanCK","GiaHienTai","GiaSoSach","P/B","CaoNhat52Tuan","ThapNhat52Tuan","EPS","PE","ROA","ROE","Beta","KhoiLuongLuuHanh","KhoiLuongNiemYet","CoPhieuQuy","NuocNgoaiSoHuu","VonThiTruong","DoanhThu-ttm(Trieu)","LNST-ttm","VonCSH","TongNo","TongTaiSan","TenCongTy","TenQuocTe","DiaChi","DienThoai","Fax","Website")
from 'D:\google_drive\00_Finance_project\02_tai_lieu_Tran\01_bao_cao_tai_chinh\company_list.csv';

select * from companies;
----

create table bao_cao_tai_chinh (
id serial not null,
company_id int,
"MaCK" text,
"nam###year" int,
"quy###quater" int,
"tai_san_ngan_han###current_assets" float,
"tien_va_cac_khoan_tuong_duong_tien###cash_and_cash_euivalents" float,
"khoan_dau_tai_chinh_ngan_han###short_term_financial_investment" float,
"khoan_phai_thu_ngan_han###short_term_account_receivables" float,
"hang_ton_kho###inventory" float,
"tai_san_ngan_han_khac###other_current_assets" float,
"tai_san_dai_han###non_current_assets" float,
"cac_khoan_phai_thu_dai_han###long_term_account_receivable" float,
"tai_san_co_dinh###fixed_assets" float,
"tai_san_co_dinh_huu_hinh" float,
"tai_san_co_dinh_thue_tai_chinh" float,
"tai_san_co_dinh_vo_hinh" float,
"loi_thi_thuong_mai" float,
"bat_dong_san_dau_tu###real_estate_investment" float,
"khoan_DT_TC_dai_han###long_term_finacial_investments" float,
"tai_san_dai_han_khac###other_long_term_assets" float,
"tong_cong_tai_san###total_assets" float,
"no_phai_tra###liabilities" float,
"no_ngan_han###short_term_liabilities" float,
"no_dai_han###long_term_liabilities" float,
"du_phong_nghiep_vu" float,
"no_khac" float,
"von_chu_so_huu1###owners_equity" float,
"nguon_kinh_phi_va_quy_khac###expenditures_and_other_funds" float,
"von_chu_so_huu2###owners_equity2" float,
"loi_ich_cua_co_dong_thieu_so" float,
"tong_cong_nguon_von###total_equity" float,
"tong_doanh_thu_hoat_dong_kinh_doanh###gross_sale_revenues" float,
"cac_khoan_giam_tru_danh_thu###deduction_revenues" float,
"doanh_thu_thuan###net_sales" float,
"gia_von_hang_ban###cost_of_goods_sold" float,
"loi_nhuan_gop###gross_profit" float,
"doanh_thu_HD_TC###financial_activities_revenues" float,
"chi_phi_tai_chinh###financial_expenses" float,
"chi_phi_ban_hang###selling_expenses" float,
"chi_phi_quan_ly_doanh_nghiep###managing_expenses" float,
"LN_thuan_HD_KD###net_profit_from_operating_activities" float,
"thu_nhap_khac###other_incomes" float,
"chi_phi_khac###other_expenses" float,
"loi_nhuan_khac###other_profits" float,
"tong_loi_nhuan_ke_toan_truoc_thue###total_profit_before_tax" float,
"chi_phi_thue_tndn1###corporate_income_tax_expenses1" float,
"chi_phi_thue_tndn2###corporate_income_tax_expenses" float,
"chi_phi_thue_tndn3###corporate_income_tax_expenses" float,
"LN_sau_thue_TN_DN###profit_after_corporate_income_tax" float,
"ebitda" float,
"gia_giao_dich_cuoi_quy###last_price_of_quarter" float,
CONSTRAINT bao_cao_tai_chinh_pkey PRIMARY KEY (id)
);

drop table bao_cao_tai_chinh
          CREATE TABLE "kqdq_aaa.csv"(
          "CAN DOI KE TOAN" varchar,"Q1 2014" varchar," 2013" varchar,"Q4 2013" varchar,"Q3 2013" varchar,"Q2 2013" varchar,"Q1 2013" varchar," 2012" varchar,"Q4 2012" varchar,"Q3 2012" varchar,"Q2 2012" varchar,"Q1 2012" varchar," 2011" varchar,"Q4 2011" varchar,"Q3 2011" varchar,"Q2 2011" varchar,"Q1 2011" varchar," 2010" varchar,"Q4 2010" varchar,"Q3 2010" varchar,"Q2 2010" varchar,"Q1 2010" varchar," 2009" varchar," 2008" varchar," 2007" varchar
          );

          COPY "kqdq_aaa.csv"("CAN DOI KE TOAN","Q1 2014"," 2013","Q4 2013","Q3 2013","Q2 2013","Q1 2013"," 2012","Q4 2012","Q3 2012","Q2 2012","Q1 2012"," 2011","Q4 2011","Q3 2011","Q2 2011","Q1 2011"," 2010","Q4 2010","Q3 2010","Q2 2010","Q1 2010"," 2009"," 2008"," 2007")
          FROM 'H:/elarion/Library/08_NewMergerTool/input//in_ma_files//kqdq_aaa.csv';

          select * from "kqdq_aaa.csv"

          CREATE TABLE bao_cao_tai_chinh(
          "number" text,"year" float,"quater" float,"current_assets" float,"cash_and_cash_euivalents" float,"short_term_financial_investment" float,"short_term_account_receivables" float,"inventory" float,"other_current_assets" float,"non_current_assets" float,"long_term_account_receivable" float,"fixed_assets" float,"loi_the_thuong_mai" float,"real_estate_investment" float,"long_term_finacial_investments" float,"other_long_term_assets" float,"total_assets" float,"liabilities" float,"short_term_liabilities" float,"long_term_liabilities" float,"owners_equity" float,"loi_ich_co_dong_thieu_so" float,"total_equity" float,"gross_sale_revenues" float,"deduction_revenues" float,"net_sales" float,"cost_of_goods_sold" float,"gross_profit" float,"financial_activities_revenues" float,"financial_expenses" float,"selling_expenses" float,"managing_expenses" float,"net_profit_from_operating_activities" float,"other_incomes" float,"other_expenses" float,"other_profits" float,"total_profit_before_tax" float,"profit_after_corporate_income_tax" float,"ebitda" float
          );

          COPY bao_cao_tai_chinh("number","year","quater","current_assets","cash_and_cash_euivalents","short_term_financial_investment","short_term_account_receivables","inventory","other_current_assets","non_current_assets","long_term_account_receivable","fixed_assets","loi_the_thuong_mai","real_estate_investment","long_term_finacial_investments","other_long_term_assets","total_assets","liabilities","short_term_liabilities","long_term_liabilities","owners_equity","loi_ich_co_dong_thieu_so","total_equity","gross_sale_revenues","deduction_revenues","net_sales","cost_of_goods_sold","gross_profit","financial_activities_revenues","financial_expenses","selling_expenses","managing_expenses","net_profit_from_operating_activities","other_incomes","other_expenses","other_profits","total_profit_before_tax","profit_after_corporate_income_tax","ebitda")
          FROM 'H://output_file.txt';


select * from bao_cao_tai_chinh
select * from companies;
delete from companies where "MaCK" ='MaCK';

delete from bao_cao_tai_chinh where "number" = 'number';


create table "full.txt"(
          "ticker" varchar,"date" varchar,"openfixed" varchar,"highfixed" varchar,"lowfixed" varchar,"closefixed" varchar,"volume" varchar,"open" varchar,"high" varchar,"low" varchar,"close" varchar,"volumedeal" varchar,"volumefb" varchar,"volumefs" varchar
          );

          copy "full.txt"("ticker","date","openfixed","highfixed","lowfixed","closefixed","volume","open","high","low","close","volumedeal","volumefb","volumefs")
          from 'h:/elarion/library/08_newmergertool/input//in_ma_files//full.txt';

          select * from stock_data

          alter table "full.txt" rename to stock_data
          delete from stock_data where "date" = 'DTYYYYMMDD'

          CREATE INDEX stock_data_ticker_index
  ON stock_data
  USING btree
  (ticker COLLATE pg_catalog."default");

  update bao_cao_tai_chinh set quater = null where quater = 0;

alter table bao_cao_tai_chinh
add column f1 float,add column f2 float,add column f3 float,add column f4 float,add column f5 float,add column f6 float,add column f7 float,add column f8 float,add column f9 float,add column f10 float,add column f11 float,add column f12 float,add column f13 float,add column f14 float,add column f15 float,add column f16 float


  ---
  select * from bao_cao_tai_chinh order by number,year desc, quater desc;
  select distinct profit_after_corporate_income_tax from bao_cao_tai_chinh;

  update bao_cao_tai_chinh
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


select number, cost_of_goods_sold,inventory,round((case when inventory != 0 then  cost_of_goods_sold/inventory else null end)::decimal,5)  from bao_cao_tai_chinh
where number in (select number from cong_ty_nganh where ma_nganh = 1) and year in (2012) and quater is null
order by cost_of_goods_sold

drop table bao_cao_tai_chinh_chi_so_2012_56_cty
select distinct number from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null

select number, year::text || (case when quater is null then '' else '-' || quater::text end) as time, f1,f2,f3,f4,f5,f6,f7,f8,f9,f10,f11,f12,f13,f14,f15,f16 
into bao_cao_tai_chinh_chi_so_2012_56_cty 
from bao_cao_tai_chinh where number not in ('PFL','API') and number in (select number from cong_ty_nganh where ma_nganh = 1) and year in (2012) and quater is null order by number,year desc, quater desc;

select number, year::text || (case when quater is null then '' else '-' || quater::text end) as time, f1,f2,f3,f4,f5,f6,f7,f8,f9,f10,f11,f12,f13,f14,f15,f16 
into bao_cao_tai_chinh_chi_so_2013_56_cty
from bao_cao_tai_chinh where number not in ('PFL','API') and number in (select number from cong_ty_nganh where ma_nganh = 1) and year in (2013) and quater is null order by number,year desc, quater desc;

select * from bao_cao_tai_chinh_chi_so_2012_56_cty order by number, time
select * from bao_cao_tai_chinh_chi_so_2013_56_cty order by number, time


insert into bao_cao_tai_chinh_chi_so_2012_56_cty(number) values('TrungBinh');
insert into bao_cao_tai_chinh_chi_so_2012_56_cty(number) values('PhuongSai');

insert into bao_cao_tai_chinh_chi_so_2013_56_cty(number) values('TrungBinh');
insert into bao_cao_tai_chinh_chi_so_2013_56_cty(number) values('PhuongSai');

update bao_cao_tai_chinh_chi_so_2012_56_cty
set f1 =round( (select sum( f1 )/(select count(*) - 2 from bao_cao_tai_chinh_chi_so_2012_56_cty) from bao_cao_tai_chinh_chi_so_2012_56_cty where number != 'TrungBinh')::decimal,5),
f2 =round( (select sum( f2 )/(select count(*) - 2 from bao_cao_tai_chinh_chi_so_2012_56_cty) from bao_cao_tai_chinh_chi_so_2012_56_cty where number != 'TrungBinh')::decimal,5),
f3 =round( (select sum( f3 )/(select count(*) - 2 from bao_cao_tai_chinh_chi_so_2012_56_cty) from bao_cao_tai_chinh_chi_so_2012_56_cty where number != 'TrungBinh')::decimal,5),
f4 =round( (select sum( f4 )/(select count(*) - 2 from bao_cao_tai_chinh_chi_so_2012_56_cty) from bao_cao_tai_chinh_chi_so_2012_56_cty where number != 'TrungBinh')::decimal,5),
f5 =round( (select sum( f5 )/(select count(*) - 2 from bao_cao_tai_chinh_chi_so_2012_56_cty) from bao_cao_tai_chinh_chi_so_2012_56_cty where number != 'TrungBinh')::decimal,5),
f6 =round( (select sum( f6 )/(select count(*) - 2 from bao_cao_tai_chinh_chi_so_2012_56_cty) from bao_cao_tai_chinh_chi_so_2012_56_cty where number != 'TrungBinh')::decimal,5),
f7 =round( (select sum( f7 )/(select count(*) - 2 from bao_cao_tai_chinh_chi_so_2012_56_cty) from bao_cao_tai_chinh_chi_so_2012_56_cty where number != 'TrungBinh')::decimal,5),
f8 =round( (select sum( f8 )/(select count(*) - 2 from bao_cao_tai_chinh_chi_so_2012_56_cty) from bao_cao_tai_chinh_chi_so_2012_56_cty where number != 'TrungBinh')::decimal,5),
f9 =round( (select sum( f9 )/(select count(*) - 2 from bao_cao_tai_chinh_chi_so_2012_56_cty) from bao_cao_tai_chinh_chi_so_2012_56_cty where number != 'TrungBinh')::decimal,5),
f10 =round( (select sum( f10 )/(select count(*) - 2 from bao_cao_tai_chinh_chi_so_2012_56_cty) from bao_cao_tai_chinh_chi_so_2012_56_cty where number != 'TrungBinh')::decimal,5),
f11 =round( (select sum( f11 )/(select count(*) - 2 from bao_cao_tai_chinh_chi_so_2012_56_cty) from bao_cao_tai_chinh_chi_so_2012_56_cty where number != 'TrungBinh')::decimal,5),
f12 =round( (select sum( f12 )/(select count(*) - 2 from bao_cao_tai_chinh_chi_so_2012_56_cty) from bao_cao_tai_chinh_chi_so_2012_56_cty where number != 'TrungBinh')::decimal,5),
f13 =round( (select sum( f13 )/(select count(*) - 2 from bao_cao_tai_chinh_chi_so_2012_56_cty) from bao_cao_tai_chinh_chi_so_2012_56_cty where number != 'TrungBinh')::decimal,5),
f14 =round( (select sum( f14 )/(select count(*) - 2 from bao_cao_tai_chinh_chi_so_2012_56_cty) from bao_cao_tai_chinh_chi_so_2012_56_cty where number != 'TrungBinh')::decimal,5),
f15 =round( (select sum( f15 )/(select count(*) - 2 from bao_cao_tai_chinh_chi_so_2012_56_cty) from bao_cao_tai_chinh_chi_so_2012_56_cty where number != 'TrungBinh')::decimal,5),
f16 =round( (select sum( f16 )/(select count(*) - 2 from bao_cao_tai_chinh_chi_so_2012_56_cty) from bao_cao_tai_chinh_chi_so_2012_56_cty where number != 'TrungBinh')::decimal,5)
where number = 'TrungBinh';

update bao_cao_tai_chinh_chi_so_2013_56_cty
set f1 =round( (select sum( f1 )/(select count(*) - 2 from bao_cao_tai_chinh_chi_so_2013_56_cty) from bao_cao_tai_chinh_chi_so_2013_56_cty where number != 'TrungBinh')::decimal,5),
f2 =round( (select sum( f2 )/(select count(*) - 2 from bao_cao_tai_chinh_chi_so_2013_56_cty) from bao_cao_tai_chinh_chi_so_2013_56_cty where number != 'TrungBinh')::decimal,5),
f3 =round( (select sum( f3 )/(select count(*) - 2 from bao_cao_tai_chinh_chi_so_2013_56_cty) from bao_cao_tai_chinh_chi_so_2013_56_cty where number != 'TrungBinh')::decimal,5),
f4 =round( (select sum( f4 )/(select count(*) - 2 from bao_cao_tai_chinh_chi_so_2013_56_cty) from bao_cao_tai_chinh_chi_so_2013_56_cty where number != 'TrungBinh')::decimal,5),
f5 =round( (select sum( f5 )/(select count(*) - 2 from bao_cao_tai_chinh_chi_so_2013_56_cty) from bao_cao_tai_chinh_chi_so_2013_56_cty where number != 'TrungBinh')::decimal,5),
f6 =round( (select sum( f6 )/(select count(*) - 2 from bao_cao_tai_chinh_chi_so_2013_56_cty) from bao_cao_tai_chinh_chi_so_2013_56_cty where number != 'TrungBinh')::decimal,5),
f7 =round( (select sum( f7 )/(select count(*) - 2 from bao_cao_tai_chinh_chi_so_2013_56_cty) from bao_cao_tai_chinh_chi_so_2013_56_cty where number != 'TrungBinh')::decimal,5),
f8 =round( (select sum( f8 )/(select count(*) - 2 from bao_cao_tai_chinh_chi_so_2013_56_cty) from bao_cao_tai_chinh_chi_so_2013_56_cty where number != 'TrungBinh')::decimal,5),
f9 =round( (select sum( f9 )/(select count(*) - 2 from bao_cao_tai_chinh_chi_so_2013_56_cty) from bao_cao_tai_chinh_chi_so_2013_56_cty where number != 'TrungBinh')::decimal,5),
f10 =round( (select sum( f10 )/(select count(*) - 2 from bao_cao_tai_chinh_chi_so_2013_56_cty) from bao_cao_tai_chinh_chi_so_2013_56_cty where number != 'TrungBinh')::decimal,5),
f11 =round( (select sum( f11 )/(select count(*) - 2 from bao_cao_tai_chinh_chi_so_2013_56_cty) from bao_cao_tai_chinh_chi_so_2013_56_cty where number != 'TrungBinh')::decimal,5),
f12 =round( (select sum( f12 )/(select count(*) - 2 from bao_cao_tai_chinh_chi_so_2013_56_cty) from bao_cao_tai_chinh_chi_so_2013_56_cty where number != 'TrungBinh')::decimal,5),
f13 =round( (select sum( f13 )/(select count(*) - 2 from bao_cao_tai_chinh_chi_so_2013_56_cty) from bao_cao_tai_chinh_chi_so_2013_56_cty where number != 'TrungBinh')::decimal,5),
f14 =round( (select sum( f14 )/(select count(*) - 2 from bao_cao_tai_chinh_chi_so_2013_56_cty) from bao_cao_tai_chinh_chi_so_2013_56_cty where number != 'TrungBinh')::decimal,5),
f15 =round( (select sum( f15 )/(select count(*) - 2 from bao_cao_tai_chinh_chi_so_2013_56_cty) from bao_cao_tai_chinh_chi_so_2013_56_cty where number != 'TrungBinh')::decimal,5),
f16 =round( (select sum( f16 )/(select count(*) - 2 from bao_cao_tai_chinh_chi_so_2013_56_cty) from bao_cao_tai_chinh_chi_so_2013_56_cty where number != 'TrungBinh')::decimal,5)
where number = 'TrungBinh';


select * from bao_cao_tai_chinh_chi_so_2012_56_cty where number in('TrungBinh','PhuongSai')
select * from bao_cao_tai_chinh_chi_so_2012_56_cty

select * from bao_cao_tai_chinh_chi_so_2013_56_cty where number in('TrungBinh','PhuongSai')
select * from bao_cao_tai_chinh_chi_so_2013_56_cty


update bao_cao_tai_chinh_chi_so_2012_56_cty
set f1 =round( (select variance( f1 ) from bao_cao_tai_chinh_chi_so_2012_56_cty where number != 'TrungBinh' and number != 'PhuongSai')::decimal,5),
f2 =round( (select variance( f2 ) from bao_cao_tai_chinh_chi_so_2012_56_cty where number != 'TrungBinh' and number != 'PhuongSai')::decimal,5),
f3 =round( (select variance( f3 ) from bao_cao_tai_chinh_chi_so_2012_56_cty where number != 'TrungBinh' and number != 'PhuongSai')::decimal,5),
f4 =round( (select variance( f4 ) from bao_cao_tai_chinh_chi_so_2012_56_cty where number != 'TrungBinh' and number != 'PhuongSai')::decimal,5),
f5 =round( (select variance( f5 ) from bao_cao_tai_chinh_chi_so_2012_56_cty where number != 'TrungBinh' and number != 'PhuongSai')::decimal,5),
f6 =round( (select variance( f6 ) from bao_cao_tai_chinh_chi_so_2012_56_cty where number != 'TrungBinh' and number != 'PhuongSai')::decimal,5),
f7 =round( (select variance( f7 ) from bao_cao_tai_chinh_chi_so_2012_56_cty where number != 'TrungBinh' and number != 'PhuongSai')::decimal,5),
f8 =round( (select variance( f8 ) from bao_cao_tai_chinh_chi_so_2012_56_cty where number != 'TrungBinh' and number != 'PhuongSai')::decimal,5),
f9 =round( (select variance( f9 ) from bao_cao_tai_chinh_chi_so_2012_56_cty where number != 'TrungBinh' and number != 'PhuongSai')::decimal,5),
f10 =round( (select variance( f10 ) from bao_cao_tai_chinh_chi_so_2012_56_cty where number != 'TrungBinh' and number != 'PhuongSai')::decimal,5),
f11 =round( (select variance( f11 ) from bao_cao_tai_chinh_chi_so_2012_56_cty where number != 'TrungBinh' and number != 'PhuongSai')::decimal,5),
f12 =round( (select variance( f12 ) from bao_cao_tai_chinh_chi_so_2012_56_cty where number != 'TrungBinh' and number != 'PhuongSai')::decimal,5),
f13 =round( (select variance( f13 ) from bao_cao_tai_chinh_chi_so_2012_56_cty where number != 'TrungBinh' and number != 'PhuongSai')::decimal,5),
f14 =round( (select variance( f14 ) from bao_cao_tai_chinh_chi_so_2012_56_cty where number != 'TrungBinh' and number != 'PhuongSai')::decimal,5),
f15 =round( (select variance( f15 ) from bao_cao_tai_chinh_chi_so_2012_56_cty where number != 'TrungBinh' and number != 'PhuongSai')::decimal,5),
f16 =round( (select variance( f16 ) from bao_cao_tai_chinh_chi_so_2012_56_cty where number != 'TrungBinh' and number != 'PhuongSai')::decimal,5)
where number = 'PhuongSai';


update bao_cao_tai_chinh_chi_so_2013_56_cty
set f1 =round( (select variance( f1 ) from bao_cao_tai_chinh_chi_so_2013_56_cty where number != 'TrungBinh' and number != 'PhuongSai')::decimal,5),
f2 =round( (select variance( f2 ) from bao_cao_tai_chinh_chi_so_2013_56_cty where number != 'TrungBinh' and number != 'PhuongSai')::decimal,5),
f3 =round( (select variance( f3 ) from bao_cao_tai_chinh_chi_so_2013_56_cty where number != 'TrungBinh' and number != 'PhuongSai')::decimal,5),
f4 =round( (select variance( f4 ) from bao_cao_tai_chinh_chi_so_2013_56_cty where number != 'TrungBinh' and number != 'PhuongSai')::decimal,5),
f5 =round( (select variance( f5 ) from bao_cao_tai_chinh_chi_so_2013_56_cty where number != 'TrungBinh' and number != 'PhuongSai')::decimal,5),
f6 =round( (select variance( f6 ) from bao_cao_tai_chinh_chi_so_2013_56_cty where number != 'TrungBinh' and number != 'PhuongSai')::decimal,5),
f7 =round( (select variance( f7 ) from bao_cao_tai_chinh_chi_so_2013_56_cty where number != 'TrungBinh' and number != 'PhuongSai')::decimal,5),
f8 =round( (select variance( f8 ) from bao_cao_tai_chinh_chi_so_2013_56_cty where number != 'TrungBinh' and number != 'PhuongSai')::decimal,5),
f9 =round( (select variance( f9 ) from bao_cao_tai_chinh_chi_so_2013_56_cty where number != 'TrungBinh' and number != 'PhuongSai')::decimal,5),
f10 =round( (select variance( f10 ) from bao_cao_tai_chinh_chi_so_2013_56_cty where number != 'TrungBinh' and number != 'PhuongSai')::decimal,5),
f11 =round( (select variance( f11 ) from bao_cao_tai_chinh_chi_so_2013_56_cty where number != 'TrungBinh' and number != 'PhuongSai')::decimal,5),
f12 =round( (select variance( f12 ) from bao_cao_tai_chinh_chi_so_2013_56_cty where number != 'TrungBinh' and number != 'PhuongSai')::decimal,5),
f13 =round( (select variance( f13 ) from bao_cao_tai_chinh_chi_so_2013_56_cty where number != 'TrungBinh' and number != 'PhuongSai')::decimal,5),
f14 =round( (select variance( f14 ) from bao_cao_tai_chinh_chi_so_2013_56_cty where number != 'TrungBinh' and number != 'PhuongSai')::decimal,5),
f15 =round( (select variance( f15 ) from bao_cao_tai_chinh_chi_so_2013_56_cty where number != 'TrungBinh' and number != 'PhuongSai')::decimal,5),
f16 =round( (select variance( f16 ) from bao_cao_tai_chinh_chi_so_2013_56_cty where number != 'TrungBinh' and number != 'PhuongSai')::decimal,5)
where number = 'PhuongSai';

alter table bao_cao_tai_chinh_chi_so_2012_56_cty
add column z1 float,add column z2 float,add column z3 float,add column z4 float,add column z5 float,add column z6 float,add column z7 float,add column z8 float,add column z9 float,add column z10 float,add column z11 float,add column z12 float,add column z13 float,add column z14 float,add column z15 float,add column z16 float
;
alter table bao_cao_tai_chinh_chi_so_2013_56_cty
add column z1 float,add column z2 float,add column z3 float,add column z4 float,add column z5 float,add column z6 float,add column z7 float,add column z8 float,add column z9 float,add column z10 float,add column z11 float,add column z12 float,add column z13 float,add column z14 float,add column z15 float,add column z16 float
;

update bao_cao_tai_chinh_chi_so_2012_56_cty
set
z1 = round((( f1 - (select f1 from bao_cao_tai_chinh_chi_so_2012_56_cty where number = 'TrungBinh'))/(select  f1 from bao_cao_tai_chinh_chi_so_2012_56_cty where number = 'PhuongSai'))::decimal ,5),
z2 = round((( f2 - (select f2 from bao_cao_tai_chinh_chi_so_2012_56_cty where number = 'TrungBinh'))/(select  f2 from bao_cao_tai_chinh_chi_so_2012_56_cty where number = 'PhuongSai'))::decimal ,5),
z3 = round((( f3 - (select f3 from bao_cao_tai_chinh_chi_so_2012_56_cty where number = 'TrungBinh'))/(select  f3 from bao_cao_tai_chinh_chi_so_2012_56_cty where number = 'PhuongSai'))::decimal ,5),
z4 = round((( f4 - (select f4 from bao_cao_tai_chinh_chi_so_2012_56_cty where number = 'TrungBinh'))/(select  f4 from bao_cao_tai_chinh_chi_so_2012_56_cty where number = 'PhuongSai'))::decimal ,5),
z5 = round((( f5 - (select f5 from bao_cao_tai_chinh_chi_so_2012_56_cty where number = 'TrungBinh'))/(select  f5 from bao_cao_tai_chinh_chi_so_2012_56_cty where number = 'PhuongSai'))::decimal ,5),
z6 = round((( f6 - (select f6 from bao_cao_tai_chinh_chi_so_2012_56_cty where number = 'TrungBinh'))/(select  f6 from bao_cao_tai_chinh_chi_so_2012_56_cty where number = 'PhuongSai'))::decimal ,5),
z7 = round((( f7 - (select f7 from bao_cao_tai_chinh_chi_so_2012_56_cty where number = 'TrungBinh'))/(select  f7 from bao_cao_tai_chinh_chi_so_2012_56_cty where number = 'PhuongSai'))::decimal ,5),
z8 = round((( f8 - (select f8 from bao_cao_tai_chinh_chi_so_2012_56_cty where number = 'TrungBinh'))/(select  f8 from bao_cao_tai_chinh_chi_so_2012_56_cty where number = 'PhuongSai'))::decimal ,5),
z9 = round((( f9 - (select f9 from bao_cao_tai_chinh_chi_so_2012_56_cty where number = 'TrungBinh'))/(select  f9 from bao_cao_tai_chinh_chi_so_2012_56_cty where number = 'PhuongSai'))::decimal ,5),
z10 = round((( f10 - (select f10 from bao_cao_tai_chinh_chi_so_2012_56_cty where number = 'TrungBinh'))/(select  f10 from bao_cao_tai_chinh_chi_so_2012_56_cty where number = 'PhuongSai'))::decimal ,5),
z11 = round((( f11 - (select f11 from bao_cao_tai_chinh_chi_so_2012_56_cty where number = 'TrungBinh'))/(select  f11 from bao_cao_tai_chinh_chi_so_2012_56_cty where number = 'PhuongSai'))::decimal ,5),
z12 = round((( f12 - (select f12 from bao_cao_tai_chinh_chi_so_2012_56_cty where number = 'TrungBinh'))/(select  f12 from bao_cao_tai_chinh_chi_so_2012_56_cty where number = 'PhuongSai'))::decimal ,5),
z13 = round((( f13 - (select f13 from bao_cao_tai_chinh_chi_so_2012_56_cty where number = 'TrungBinh'))/(select  f13 from bao_cao_tai_chinh_chi_so_2012_56_cty where number = 'PhuongSai'))::decimal ,5),
z14 = round((( f14 - (select f14 from bao_cao_tai_chinh_chi_so_2012_56_cty where number = 'TrungBinh'))/(select  f14 from bao_cao_tai_chinh_chi_so_2012_56_cty where number = 'PhuongSai'))::decimal ,5),
z15 = round((( f15 - (select f15 from bao_cao_tai_chinh_chi_so_2012_56_cty where number = 'TrungBinh'))/(select  f15 from bao_cao_tai_chinh_chi_so_2012_56_cty where number = 'PhuongSai'))::decimal ,5),
z16 = round((( f16 - (select f16 from bao_cao_tai_chinh_chi_so_2012_56_cty where number = 'TrungBinh'))/(select  f16 from bao_cao_tai_chinh_chi_so_2012_56_cty where number = 'PhuongSai'))::decimal ,5);

update bao_cao_tai_chinh_chi_so_2013_56_cty
set
z1 = round((( f1 - (select f1 from bao_cao_tai_chinh_chi_so_2013_56_cty where number = 'TrungBinh'))/(select  f1 from bao_cao_tai_chinh_chi_so_2013_56_cty where number = 'PhuongSai'))::decimal ,5),
z2 = round((( f2 - (select f2 from bao_cao_tai_chinh_chi_so_2013_56_cty where number = 'TrungBinh'))/(select  f2 from bao_cao_tai_chinh_chi_so_2013_56_cty where number = 'PhuongSai'))::decimal ,5),
z3 = round((( f3 - (select f3 from bao_cao_tai_chinh_chi_so_2013_56_cty where number = 'TrungBinh'))/(select  f3 from bao_cao_tai_chinh_chi_so_2013_56_cty where number = 'PhuongSai'))::decimal ,5),
z4 = round((( f4 - (select f4 from bao_cao_tai_chinh_chi_so_2013_56_cty where number = 'TrungBinh'))/(select  f4 from bao_cao_tai_chinh_chi_so_2013_56_cty where number = 'PhuongSai'))::decimal ,5),
z5 = round((( f5 - (select f5 from bao_cao_tai_chinh_chi_so_2013_56_cty where number = 'TrungBinh'))/(select  f5 from bao_cao_tai_chinh_chi_so_2013_56_cty where number = 'PhuongSai'))::decimal ,5),
z6 = round((( f6 - (select f6 from bao_cao_tai_chinh_chi_so_2013_56_cty where number = 'TrungBinh'))/(select  f6 from bao_cao_tai_chinh_chi_so_2013_56_cty where number = 'PhuongSai'))::decimal ,5),
z7 = round((( f7 - (select f7 from bao_cao_tai_chinh_chi_so_2013_56_cty where number = 'TrungBinh'))/(select  f7 from bao_cao_tai_chinh_chi_so_2013_56_cty where number = 'PhuongSai'))::decimal ,5),
z8 = round((( f8 - (select f8 from bao_cao_tai_chinh_chi_so_2013_56_cty where number = 'TrungBinh'))/(select  f8 from bao_cao_tai_chinh_chi_so_2013_56_cty where number = 'PhuongSai'))::decimal ,5),
z9 = round((( f9 - (select f9 from bao_cao_tai_chinh_chi_so_2013_56_cty where number = 'TrungBinh'))/(select  f9 from bao_cao_tai_chinh_chi_so_2013_56_cty where number = 'PhuongSai'))::decimal ,5),
z10 = round((( f10 - (select f10 from bao_cao_tai_chinh_chi_so_2013_56_cty where number = 'TrungBinh'))/(select  f10 from bao_cao_tai_chinh_chi_so_2013_56_cty where number = 'PhuongSai'))::decimal ,5),
z11 = round((( f11 - (select f11 from bao_cao_tai_chinh_chi_so_2013_56_cty where number = 'TrungBinh'))/(select  f11 from bao_cao_tai_chinh_chi_so_2013_56_cty where number = 'PhuongSai'))::decimal ,5),
z12 = round((( f12 - (select f12 from bao_cao_tai_chinh_chi_so_2013_56_cty where number = 'TrungBinh'))/(select  f12 from bao_cao_tai_chinh_chi_so_2013_56_cty where number = 'PhuongSai'))::decimal ,5),
z13 = round((( f13 - (select f13 from bao_cao_tai_chinh_chi_so_2013_56_cty where number = 'TrungBinh'))/(select  f13 from bao_cao_tai_chinh_chi_so_2013_56_cty where number = 'PhuongSai'))::decimal ,5),
z14 = round((( f14 - (select f14 from bao_cao_tai_chinh_chi_so_2013_56_cty where number = 'TrungBinh'))/(select  f14 from bao_cao_tai_chinh_chi_so_2013_56_cty where number = 'PhuongSai'))::decimal ,5),
z15 = round((( f15 - (select f15 from bao_cao_tai_chinh_chi_so_2013_56_cty where number = 'TrungBinh'))/(select  f15 from bao_cao_tai_chinh_chi_so_2013_56_cty where number = 'PhuongSai'))::decimal ,5),
z16 = round((( f16 - (select f16 from bao_cao_tai_chinh_chi_so_2013_56_cty where number = 'TrungBinh'))/(select  f16 from bao_cao_tai_chinh_chi_so_2013_56_cty where number = 'PhuongSai'))::decimal ,5);


select * from bao_cao_tai_chinh_chi_so_2012_56_cty where time is null
select * from bao_cao_tai_chinh_chi_so_2013_56_cty where time is null

insert into bao_cao_tai_chinh_chi_so_2012_56_cty(number) values('Min');
insert into bao_cao_tai_chinh_chi_so_2012_56_cty(number) values('Max');
insert into bao_cao_tai_chinh_chi_so_2012_56_cty(number) values('Delta');
insert into bao_cao_tai_chinh_chi_so_2012_56_cty(number) values('string_5');


insert into bao_cao_tai_chinh_chi_so_2013_56_cty(number) values('Min');
insert into bao_cao_tai_chinh_chi_so_2013_56_cty(number) values('Max');
insert into bao_cao_tai_chinh_chi_so_2013_56_cty(number) values('Delta');
insert into bao_cao_tai_chinh_chi_so_2013_56_cty(number) values('string_5');
select * from bao_cao_tai_chinh_chi_so_2013_56_cty where number = 'string_5'
--delete from bao_cao_tai_chinh_chi_so_2012_56_cty where number in ('Min','Max','Delta')


update bao_cao_tai_chinh_chi_so_2013_56_cty
set v1 = (select min( z1 ) from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null)::text || '_' || (select max( z1  ) from (select z1  from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null order by z1  limit 11) as a)::text || '_' || (select max( z1  ) from (select z1  from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null order by z1  limit 22) as a)::text || '_' || (select max( z1  ) from (select z1  from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null order by z1  limit 34) as a)::text || '_' || (select max( z1 ) from (select z1 from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null order by z1 limit 45) as a)::text || '_' || (select max(  z1 ) from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null)::text,
v2 = (select min( z2 ) from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null)::text || '_' || (select max( z2  ) from (select z2  from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null order by z2  limit 11) as a)::text || '_' || (select max( z2  ) from (select z2  from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null order by z2  limit 22) as a)::text || '_' || (select max( z2  ) from (select z2  from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null order by z2  limit 34) as a)::text || '_' || (select max( z2 ) from (select z2 from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null order by z2 limit 45) as a)::text || '_' || (select max(  z2 ) from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null)::text,
v3 = (select min( z3 ) from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null)::text || '_' || (select max( z3  ) from (select z3  from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null order by z3  limit 11) as a)::text || '_' || (select max( z3  ) from (select z3  from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null order by z3  limit 22) as a)::text || '_' || (select max( z3  ) from (select z3  from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null order by z3  limit 34) as a)::text || '_' || (select max( z3 ) from (select z3 from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null order by z3 limit 45) as a)::text || '_' || (select max(  z3 ) from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null)::text,
v4 = (select min( z4 ) from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null)::text || '_' || (select max( z4  ) from (select z4  from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null order by z4  limit 11) as a)::text || '_' || (select max( z4  ) from (select z4  from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null order by z4  limit 22) as a)::text || '_' || (select max( z4  ) from (select z4  from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null order by z4  limit 34) as a)::text || '_' || (select max( z4 ) from (select z4 from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null order by z4 limit 45) as a)::text || '_' || (select max(  z4 ) from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null)::text,
v5 = (select min( z5 ) from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null)::text || '_' || (select max( z5  ) from (select z5  from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null order by z5  limit 11) as a)::text || '_' || (select max( z5  ) from (select z5  from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null order by z5  limit 22) as a)::text || '_' || (select max( z5  ) from (select z5  from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null order by z5  limit 34) as a)::text || '_' || (select max( z5 ) from (select z5 from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null order by z5 limit 45) as a)::text || '_' || (select max(  z5 ) from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null)::text,
v6 = (select min( z6 ) from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null)::text || '_' || (select max( z6  ) from (select z6  from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null order by z6  limit 11) as a)::text || '_' || (select max( z6  ) from (select z6  from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null order by z6  limit 22) as a)::text || '_' || (select max( z6  ) from (select z6  from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null order by z6  limit 34) as a)::text || '_' || (select max( z6 ) from (select z6 from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null order by z6 limit 45) as a)::text || '_' || (select max(  z6 ) from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null)::text,
v7 = (select min( z7 ) from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null)::text || '_' || (select max( z7  ) from (select z7  from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null order by z7  limit 11) as a)::text || '_' || (select max( z7  ) from (select z7  from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null order by z7  limit 22) as a)::text || '_' || (select max( z7  ) from (select z7  from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null order by z7  limit 34) as a)::text || '_' || (select max( z7 ) from (select z7 from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null order by z7 limit 45) as a)::text || '_' || (select max(  z7 ) from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null)::text,
v8 = (select min( z8 ) from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null)::text || '_' || (select max( z8  ) from (select z8  from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null order by z8  limit 11) as a)::text || '_' || (select max( z8  ) from (select z8  from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null order by z8  limit 22) as a)::text || '_' || (select max( z8  ) from (select z8  from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null order by z8  limit 34) as a)::text || '_' || (select max( z8 ) from (select z8 from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null order by z8 limit 45) as a)::text || '_' || (select max(  z8 ) from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null)::text,
v9 = (select min( z9 ) from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null)::text || '_' || (select max( z9  ) from (select z9  from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null order by z9  limit 11) as a)::text || '_' || (select max( z9  ) from (select z9  from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null order by z9  limit 22) as a)::text || '_' || (select max( z9  ) from (select z9  from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null order by z9  limit 34) as a)::text || '_' || (select max( z9 ) from (select z9 from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null order by z9 limit 45) as a)::text || '_' || (select max(  z9 ) from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null)::text,
v10 = (select min( z10 ) from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null)::text || '_' || (select max( z10  ) from (select z10  from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null order by z10  limit 11) as a)::text || '_' || (select max( z10  ) from (select z10  from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null order by z10  limit 22) as a)::text || '_' || (select max( z10  ) from (select z10  from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null order by z10  limit 34) as a)::text || '_' || (select max( z10 ) from (select z10 from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null order by z10 limit 45) as a)::text || '_' || (select max(  z10 ) from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null)::text,
v11 = (select min( z11 ) from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null)::text || '_' || (select max( z11  ) from (select z11  from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null order by z11  limit 11) as a)::text || '_' || (select max( z11  ) from (select z11  from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null order by z11  limit 22) as a)::text || '_' || (select max( z11  ) from (select z11  from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null order by z11  limit 34) as a)::text || '_' || (select max( z11 ) from (select z11 from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null order by z11 limit 45) as a)::text || '_' || (select max(  z11 ) from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null)::text,
v12 = (select min( z12 ) from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null)::text || '_' || (select max( z12  ) from (select z12  from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null order by z12  limit 11) as a)::text || '_' || (select max( z12  ) from (select z12  from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null order by z12  limit 22) as a)::text || '_' || (select max( z12  ) from (select z12  from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null order by z12  limit 34) as a)::text || '_' || (select max( z12 ) from (select z12 from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null order by z12 limit 45) as a)::text || '_' || (select max(  z12 ) from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null)::text,
v13 = (select min( z13 ) from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null)::text || '_' || (select max( z13  ) from (select z13  from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null order by z13  limit 11) as a)::text || '_' || (select max( z13  ) from (select z13  from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null order by z13  limit 22) as a)::text || '_' || (select max( z13  ) from (select z13  from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null order by z13  limit 34) as a)::text || '_' || (select max( z13 ) from (select z13 from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null order by z13 limit 45) as a)::text || '_' || (select max(  z13 ) from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null)::text,
v14 = (select min( z14 ) from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null)::text || '_' || (select max( z14  ) from (select z14  from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null order by z14  limit 11) as a)::text || '_' || (select max( z14  ) from (select z14  from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null order by z14  limit 22) as a)::text || '_' || (select max( z14  ) from (select z14  from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null order by z14  limit 34) as a)::text || '_' || (select max( z14 ) from (select z14 from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null order by z14 limit 45) as a)::text || '_' || (select max(  z14 ) from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null)::text,
v15 = (select min( z15 ) from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null)::text || '_' || (select max( z15  ) from (select z15  from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null order by z15  limit 11) as a)::text || '_' || (select max( z15  ) from (select z15  from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null order by z15  limit 22) as a)::text || '_' || (select max( z15  ) from (select z15  from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null order by z15  limit 34) as a)::text || '_' || (select max( z15 ) from (select z15 from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null order by z15 limit 45) as a)::text || '_' || (select max(  z15 ) from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null)::text,
v16 = (select min( z16 ) from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null)::text || '_' || (select max( z16  ) from (select z16  from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null order by z16  limit 11) as a)::text || '_' || (select max( z16  ) from (select z16  from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null order by z16  limit 22) as a)::text || '_' || (select max( z16  ) from (select z16  from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null order by z16  limit 34) as a)::text || '_' || (select max( z16 ) from (select z16 from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null order by z16 limit 45) as a)::text || '_' || (select max(  z16 ) from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null)::text
where number = 'string_5'

update bao_cao_tai_chinh_chi_so_2012_56_cty
set v1 = (select min( z1 ) from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null)::text || '_' || (select max( z1  ) from (select z1  from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null order by z1  limit 11) as a)::text || '_' || (select max( z1  ) from (select z1  from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null order by z1  limit 22) as a)::text || '_' || (select max( z1  ) from (select z1  from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null order by z1  limit 34) as a)::text || '_' || (select max( z1 ) from (select z1 from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null order by z1 limit 45) as a)::text || '_' || (select max(  z1 ) from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null)::text,
v2 = (select min( z2 ) from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null)::text || '_' || (select max( z2  ) from (select z2  from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null order by z2  limit 11) as a)::text || '_' || (select max( z2  ) from (select z2  from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null order by z2  limit 22) as a)::text || '_' || (select max( z2  ) from (select z2  from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null order by z2  limit 34) as a)::text || '_' || (select max( z2 ) from (select z2 from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null order by z2 limit 45) as a)::text || '_' || (select max(  z2 ) from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null)::text,
v3 = (select min( z3 ) from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null)::text || '_' || (select max( z3  ) from (select z3  from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null order by z3  limit 11) as a)::text || '_' || (select max( z3  ) from (select z3  from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null order by z3  limit 22) as a)::text || '_' || (select max( z3  ) from (select z3  from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null order by z3  limit 34) as a)::text || '_' || (select max( z3 ) from (select z3 from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null order by z3 limit 45) as a)::text || '_' || (select max(  z3 ) from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null)::text,
v4 = (select min( z4 ) from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null)::text || '_' || (select max( z4  ) from (select z4  from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null order by z4  limit 11) as a)::text || '_' || (select max( z4  ) from (select z4  from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null order by z4  limit 22) as a)::text || '_' || (select max( z4  ) from (select z4  from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null order by z4  limit 34) as a)::text || '_' || (select max( z4 ) from (select z4 from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null order by z4 limit 45) as a)::text || '_' || (select max(  z4 ) from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null)::text,
v5 = (select min( z5 ) from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null)::text || '_' || (select max( z5  ) from (select z5  from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null order by z5  limit 11) as a)::text || '_' || (select max( z5  ) from (select z5  from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null order by z5  limit 22) as a)::text || '_' || (select max( z5  ) from (select z5  from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null order by z5  limit 34) as a)::text || '_' || (select max( z5 ) from (select z5 from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null order by z5 limit 45) as a)::text || '_' || (select max(  z5 ) from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null)::text,
v6 = (select min( z6 ) from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null)::text || '_' || (select max( z6  ) from (select z6  from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null order by z6  limit 11) as a)::text || '_' || (select max( z6  ) from (select z6  from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null order by z6  limit 22) as a)::text || '_' || (select max( z6  ) from (select z6  from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null order by z6  limit 34) as a)::text || '_' || (select max( z6 ) from (select z6 from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null order by z6 limit 45) as a)::text || '_' || (select max(  z6 ) from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null)::text,
v7 = (select min( z7 ) from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null)::text || '_' || (select max( z7  ) from (select z7  from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null order by z7  limit 11) as a)::text || '_' || (select max( z7  ) from (select z7  from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null order by z7  limit 22) as a)::text || '_' || (select max( z7  ) from (select z7  from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null order by z7  limit 34) as a)::text || '_' || (select max( z7 ) from (select z7 from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null order by z7 limit 45) as a)::text || '_' || (select max(  z7 ) from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null)::text,
v8 = (select min( z8 ) from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null)::text || '_' || (select max( z8  ) from (select z8  from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null order by z8  limit 11) as a)::text || '_' || (select max( z8  ) from (select z8  from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null order by z8  limit 22) as a)::text || '_' || (select max( z8  ) from (select z8  from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null order by z8  limit 34) as a)::text || '_' || (select max( z8 ) from (select z8 from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null order by z8 limit 45) as a)::text || '_' || (select max(  z8 ) from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null)::text,
v9 = (select min( z9 ) from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null)::text || '_' || (select max( z9  ) from (select z9  from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null order by z9  limit 11) as a)::text || '_' || (select max( z9  ) from (select z9  from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null order by z9  limit 22) as a)::text || '_' || (select max( z9  ) from (select z9  from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null order by z9  limit 34) as a)::text || '_' || (select max( z9 ) from (select z9 from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null order by z9 limit 45) as a)::text || '_' || (select max(  z9 ) from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null)::text,
v10 = (select min( z10 ) from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null)::text || '_' || (select max( z10  ) from (select z10  from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null order by z10  limit 11) as a)::text || '_' || (select max( z10  ) from (select z10  from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null order by z10  limit 22) as a)::text || '_' || (select max( z10  ) from (select z10  from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null order by z10  limit 34) as a)::text || '_' || (select max( z10 ) from (select z10 from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null order by z10 limit 45) as a)::text || '_' || (select max(  z10 ) from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null)::text,
v11 = (select min( z11 ) from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null)::text || '_' || (select max( z11  ) from (select z11  from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null order by z11  limit 11) as a)::text || '_' || (select max( z11  ) from (select z11  from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null order by z11  limit 22) as a)::text || '_' || (select max( z11  ) from (select z11  from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null order by z11  limit 34) as a)::text || '_' || (select max( z11 ) from (select z11 from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null order by z11 limit 45) as a)::text || '_' || (select max(  z11 ) from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null)::text,
v12 = (select min( z12 ) from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null)::text || '_' || (select max( z12  ) from (select z12  from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null order by z12  limit 11) as a)::text || '_' || (select max( z12  ) from (select z12  from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null order by z12  limit 22) as a)::text || '_' || (select max( z12  ) from (select z12  from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null order by z12  limit 34) as a)::text || '_' || (select max( z12 ) from (select z12 from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null order by z12 limit 45) as a)::text || '_' || (select max(  z12 ) from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null)::text,
v13 = (select min( z13 ) from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null)::text || '_' || (select max( z13  ) from (select z13  from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null order by z13  limit 11) as a)::text || '_' || (select max( z13  ) from (select z13  from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null order by z13  limit 22) as a)::text || '_' || (select max( z13  ) from (select z13  from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null order by z13  limit 34) as a)::text || '_' || (select max( z13 ) from (select z13 from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null order by z13 limit 45) as a)::text || '_' || (select max(  z13 ) from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null)::text,
v14 = (select min( z14 ) from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null)::text || '_' || (select max( z14  ) from (select z14  from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null order by z14  limit 11) as a)::text || '_' || (select max( z14  ) from (select z14  from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null order by z14  limit 22) as a)::text || '_' || (select max( z14  ) from (select z14  from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null order by z14  limit 34) as a)::text || '_' || (select max( z14 ) from (select z14 from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null order by z14 limit 45) as a)::text || '_' || (select max(  z14 ) from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null)::text,
v15 = (select min( z15 ) from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null)::text || '_' || (select max( z15  ) from (select z15  from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null order by z15  limit 11) as a)::text || '_' || (select max( z15  ) from (select z15  from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null order by z15  limit 22) as a)::text || '_' || (select max( z15  ) from (select z15  from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null order by z15  limit 34) as a)::text || '_' || (select max( z15 ) from (select z15 from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null order by z15 limit 45) as a)::text || '_' || (select max(  z15 ) from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null)::text,
v16 = (select min( z16 ) from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null)::text || '_' || (select max( z16  ) from (select z16  from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null order by z16  limit 11) as a)::text || '_' || (select max( z16  ) from (select z16  from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null order by z16  limit 22) as a)::text || '_' || (select max( z16  ) from (select z16  from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null order by z16  limit 34) as a)::text || '_' || (select max( z16 ) from (select z16 from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null order by z16 limit 45) as a)::text || '_' || (select max(  z16 ) from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null)::text
where number = 'string_5'

update bao_cao_tai_chinh_chi_so_2012_56_cty
set 
z1 = (select min( z1) from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null),
z2 = (select min( z2) from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null),
z3 = (select min( z3) from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null),
z4 = (select min( z4) from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null),
z5 = (select min( z5) from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null),
z6 = (select min( z6) from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null),
z7 = (select min( z7) from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null),
z8 = (select min( z8) from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null),
z9 = (select min( z9) from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null),
z10 = (select min( z10) from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null),
z11 = (select min( z11) from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null),
z12 = (select min( z12) from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null),
z13 = (select min( z13) from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null),
z14 = (select min( z14) from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null),
z15 = (select min( z15) from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null),
z16 = (select min( z16 ) from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null)
where number = 'Min';

update bao_cao_tai_chinh_chi_so_2013_56_cty
set 
z1 = (select min( z1) from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null),
z2 = (select min( z2) from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null),
z3 = (select min( z3) from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null),
z4 = (select min( z4) from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null),
z5 = (select min( z5) from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null),
z6 = (select min( z6) from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null),
z7 = (select min( z7) from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null),
z8 = (select min( z8) from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null),
z9 = (select min( z9) from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null),
z10 = (select min( z10) from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null),
z11 = (select min( z11) from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null),
z12 = (select min( z12) from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null),
z13 = (select min( z13) from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null),
z14 = (select min( z14) from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null),
z15 = (select min( z15) from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null),
z16 = (select min( z16 ) from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null)
where number = 'Min';

update bao_cao_tai_chinh_chi_so_2012_56_cty
set
z1 = (select max( z1) from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null),
z2 = (select max( z2) from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null),
z3 = (select max( z3) from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null),
z4 = (select max( z4) from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null),
z5 = (select max( z5) from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null),
z6 = (select max( z6) from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null),
z7 = (select max( z7) from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null),
z8 = (select max( z8) from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null),
z9 = (select max( z9) from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null),
z10 = (select max( z10) from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null),
z11 = (select max( z11) from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null),
z12 = (select max( z12) from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null),
z13 = (select max( z13) from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null),
z14 = (select max( z14) from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null),
z15 = (select max( z15) from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null),
z16 = (select max( z16 ) from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null)
where number = 'Max';

update bao_cao_tai_chinh_chi_so_2013_56_cty
set
z1 = (select max( z1) from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null),
z2 = (select max( z2) from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null),
z3 = (select max( z3) from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null),
z4 = (select max( z4) from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null),
z5 = (select max( z5) from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null),
z6 = (select max( z6) from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null),
z7 = (select max( z7) from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null),
z8 = (select max( z8) from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null),
z9 = (select max( z9) from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null),
z10 = (select max( z10) from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null),
z11 = (select max( z11) from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null),
z12 = (select max( z12) from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null),
z13 = (select max( z13) from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null),
z14 = (select max( z14) from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null),
z15 = (select max( z15) from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null),
z16 = (select max( z16 ) from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null)
where number = 'Max';

update bao_cao_tai_chinh_chi_so_2012_56_cty 
set
z1 = ((select max( z1) from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null) - (select min( z1) from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null))/5,
z2 = ((select max( z2) from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null) - (select min( z2) from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null))/5,
z3 = ((select max( z3) from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null) - (select min( z3) from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null))/5,
z4 = ((select max( z4) from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null) - (select min( z4) from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null))/5,
z5 = ((select max( z5) from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null) - (select min( z5) from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null))/5,
z6 = ((select max( z6) from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null) - (select min( z6) from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null))/5,
z7 = ((select max( z7) from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null) - (select min( z7) from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null))/5,
z8 = ((select max( z8) from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null) - (select min( z8) from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null))/5,
z9 = ((select max( z9) from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null) - (select min( z9) from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null))/5,
z10 = ((select max( z10) from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null) - (select min( z10) from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null))/5,
z11 = ((select max( z11) from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null) - (select min( z11) from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null))/5,
z12 = ((select max( z12) from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null) - (select min( z12) from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null))/5,
z13 = ((select max( z13) from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null) - (select min( z13) from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null))/5,
z14 = ((select max( z14) from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null) - (select min( z14) from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null))/5,
z15 = ((select max( z15) from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null) - (select min( z15) from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null))/5,
z16 = ((select max( z16 ) from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null) - (select min( z16) from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null))/5
where number = 'Delta';

update bao_cao_tai_chinh_chi_so_2013_56_cty 
set
z1 = ((select max( z1) from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null) - (select min( z1) from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null))/5,
z2 = ((select max( z2) from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null) - (select min( z2) from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null))/5,
z3 = ((select max( z3) from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null) - (select min( z3) from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null))/5,
z4 = ((select max( z4) from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null) - (select min( z4) from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null))/5,
z5 = ((select max( z5) from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null) - (select min( z5) from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null))/5,
z6 = ((select max( z6) from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null) - (select min( z6) from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null))/5,
z7 = ((select max( z7) from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null) - (select min( z7) from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null))/5,
z8 = ((select max( z8) from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null) - (select min( z8) from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null))/5,
z9 = ((select max( z9) from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null) - (select min( z9) from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null))/5,
z10 = ((select max( z10) from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null) - (select min( z10) from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null))/5,
z11 = ((select max( z11) from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null) - (select min( z11) from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null))/5,
z12 = ((select max( z12) from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null) - (select min( z12) from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null))/5,
z13 = ((select max( z13) from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null) - (select min( z13) from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null))/5,
z14 = ((select max( z14) from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null) - (select min( z14) from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null))/5,
z15 = ((select max( z15) from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null) - (select min( z15) from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null))/5,
z16 = ((select max( z16 ) from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null) - (select min( z16) from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null))/5
where number = 'Delta';

select * from bao_cao_tai_chinh_chi_so_2012_56_cty where time is null
select * from bao_cao_tai_chinh_chi_so_2013_56_cty where time is null


CREATE OR REPLACE FUNCTION update_status(float, float, float,float) --value,delta,min,max
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

select split_part('1_2_3_4_5','_',1)

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

  select update_status(0.00922,0.073006,-0.35581,0.00922)

  select -0.35581 + 5*0.073006 

-0.35581 -0.282804 -0.209798 -0.136792 -0.063786 0.009220

select distinct number from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null

alter table bao_cao_tai_chinh_chi_so_2012_56_cty
add column t1 text,add column t2 text,add column t3 text,add column t4 text,add column t5 text,add column t6 text,add column t7 text,add column t8 text,add column t9 text,add column t10 text,add column t11 text,add column t12 text,add column t13 text,add column t14 text,add column t15 text,add column t16 text
;
alter table bao_cao_tai_chinh_chi_so_2013_56_cty
add column t1 text,add column t2 text,add column t3 text,add column t4 text,add column t5 text,add column t6 text,add column t7 text,add column t8 text,add column t9 text,add column t10 text,add column t11 text,add column t12 text,add column t13 text,add column t14 text,add column t15 text,add column t16 text

alter table bao_cao_tai_chinh_chi_so_2012_56_cty
add column v1 text,add column v2 text,add column v3 text,add column v4 text,add column v5 text,add column v6 text,add column v7 text,add column v8 text,add column v9 text,add column v10 text,add column v11 text,add column v12 text,add column v13 text,add column v14 text,add column v15 text,add column v16 text
;
alter table bao_cao_tai_chinh_chi_so_2013_56_cty
add column v1 text,add column v2 text,add column v3 text,add column v4 text,add column v5 text,add column v6 text,add column v7 text,add column v8 text,add column v9 text,add column v10 text,add column v11 text,add column v12 text,add column v13 text,add column v14 text,add column v15 text,add column v16 text


select * from bao_cao_tai_chinh_chi_so_2012_56_cty order by number, time desc
select * from bao_cao_tai_chinh_chi_so_2013_56_cty order by number, time desc


select t16,count(*) from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null group by t16
select number,z1,t1 from bao_cao_tai_chinh_chi_so_2012_56_cty order by z1
select * from bao_cao_tai_chinh_chi_so_2012_56_cty where number = 'string_5'

select update_status2( z1 ,(select v1 from bao_cao_tai_chinh_chi_so_2013_56_cty where number = 'string_5')),count(*)
from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null group by update_status2( z1 ,(select v1 from bao_cao_tai_chinh_chi_so_2013_56_cty where number = 'string_5'));

update bao_cao_tai_chinh_chi_so_2013_56_cty
set
v1 = update_status2( z1 ,(select v1 from bao_cao_tai_chinh_chi_so_2013_56_cty where number = 'string_5')),
v2 = update_status2( z2 ,(select v2 from bao_cao_tai_chinh_chi_so_2013_56_cty where number = 'string_5')),
v3 = update_status2( z3 ,(select v3 from bao_cao_tai_chinh_chi_so_2013_56_cty where number = 'string_5')),
v4 = update_status2( z4 ,(select v4 from bao_cao_tai_chinh_chi_so_2013_56_cty where number = 'string_5')),
v5 = update_status2( z5 ,(select v5 from bao_cao_tai_chinh_chi_so_2013_56_cty where number = 'string_5')),
v6 = update_status2( z6 ,(select v6 from bao_cao_tai_chinh_chi_so_2013_56_cty where number = 'string_5')),
v7 = update_status2( z7 ,(select v7 from bao_cao_tai_chinh_chi_so_2013_56_cty where number = 'string_5')),
v8 = update_status2( z8 ,(select v8 from bao_cao_tai_chinh_chi_so_2013_56_cty where number = 'string_5')),
v9 = update_status2( z9 ,(select v9 from bao_cao_tai_chinh_chi_so_2013_56_cty where number = 'string_5')),
v10 = update_status2( z10 ,(select v10 from bao_cao_tai_chinh_chi_so_2013_56_cty where number = 'string_5')),
v11 = update_status2( z11 ,(select v11 from bao_cao_tai_chinh_chi_so_2013_56_cty where number = 'string_5')),
v12 = update_status2( z12 ,(select v12 from bao_cao_tai_chinh_chi_so_2013_56_cty where number = 'string_5')),
v13 = update_status2( z13 ,(select v13 from bao_cao_tai_chinh_chi_so_2013_56_cty where number = 'string_5')),
v14 = update_status2( z14 ,(select v14 from bao_cao_tai_chinh_chi_so_2013_56_cty where number = 'string_5')),
v15 = update_status2( z15 ,(select v15 from bao_cao_tai_chinh_chi_so_2013_56_cty where number = 'string_5')),
v16 = update_status2( z16 ,(select v16 from bao_cao_tai_chinh_chi_so_2013_56_cty where number = 'string_5'))
where time is not null

update bao_cao_tai_chinh_chi_so_2012_56_cty
set
v1 = update_status2( z1 ,(select v1 from bao_cao_tai_chinh_chi_so_2012_56_cty where number = 'string_5')),
v2 = update_status2( z2 ,(select v2 from bao_cao_tai_chinh_chi_so_2012_56_cty where number = 'string_5')),
v3 = update_status2( z3 ,(select v3 from bao_cao_tai_chinh_chi_so_2012_56_cty where number = 'string_5')),
v4 = update_status2( z4 ,(select v4 from bao_cao_tai_chinh_chi_so_2012_56_cty where number = 'string_5')),
v5 = update_status2( z5 ,(select v5 from bao_cao_tai_chinh_chi_so_2012_56_cty where number = 'string_5')),
v6 = update_status2( z6 ,(select v6 from bao_cao_tai_chinh_chi_so_2012_56_cty where number = 'string_5')),
v7 = update_status2( z7 ,(select v7 from bao_cao_tai_chinh_chi_so_2012_56_cty where number = 'string_5')),
v8 = update_status2( z8 ,(select v8 from bao_cao_tai_chinh_chi_so_2012_56_cty where number = 'string_5')),
v9 = update_status2( z9 ,(select v9 from bao_cao_tai_chinh_chi_so_2012_56_cty where number = 'string_5')),
v10 = update_status2( z10 ,(select v10 from bao_cao_tai_chinh_chi_so_2012_56_cty where number = 'string_5')),
v11 = update_status2( z11 ,(select v11 from bao_cao_tai_chinh_chi_so_2012_56_cty where number = 'string_5')),
v12 = update_status2( z12 ,(select v12 from bao_cao_tai_chinh_chi_so_2012_56_cty where number = 'string_5')),
v13 = update_status2( z13 ,(select v13 from bao_cao_tai_chinh_chi_so_2012_56_cty where number = 'string_5')),
v14 = update_status2( z14 ,(select v14 from bao_cao_tai_chinh_chi_so_2012_56_cty where number = 'string_5')),
v15 = update_status2( z15 ,(select v15 from bao_cao_tai_chinh_chi_so_2012_56_cty where number = 'string_5')),
v16 = update_status2( z16 ,(select v16 from bao_cao_tai_chinh_chi_so_2012_56_cty where number = 'string_5'))
where time is not null


update bao_cao_tai_chinh_chi_so_2012_56_cty
set
t1 =update_status( z1 ,(select z1 from bao_cao_tai_chinh_chi_so_2012_56_cty where number = 'Delta') ,(select z1 from bao_cao_tai_chinh_chi_so_2012_56_cty where number = 'Min') ,(select z1 from bao_cao_tai_chinh_chi_so_2012_56_cty where number = 'Max')),
t2 =update_status( z2 ,(select z2 from bao_cao_tai_chinh_chi_so_2012_56_cty where number = 'Delta') ,(select z2 from bao_cao_tai_chinh_chi_so_2012_56_cty where number = 'Min') ,(select z2 from bao_cao_tai_chinh_chi_so_2012_56_cty where number = 'Max')),
t3 =update_status( z3 ,(select z3 from bao_cao_tai_chinh_chi_so_2012_56_cty where number = 'Delta') ,(select z3 from bao_cao_tai_chinh_chi_so_2012_56_cty where number = 'Min') ,(select z3 from bao_cao_tai_chinh_chi_so_2012_56_cty where number = 'Max')),
t4 =update_status( z4 ,(select z4 from bao_cao_tai_chinh_chi_so_2012_56_cty where number = 'Delta') ,(select z4 from bao_cao_tai_chinh_chi_so_2012_56_cty where number = 'Min') ,(select z4 from bao_cao_tai_chinh_chi_so_2012_56_cty where number = 'Max')),
t5 =update_status( z5 ,(select z5 from bao_cao_tai_chinh_chi_so_2012_56_cty where number = 'Delta') ,(select z5 from bao_cao_tai_chinh_chi_so_2012_56_cty where number = 'Min') ,(select z5 from bao_cao_tai_chinh_chi_so_2012_56_cty where number = 'Max')),
t6 =update_status( z6 ,(select z6 from bao_cao_tai_chinh_chi_so_2012_56_cty where number = 'Delta') ,(select z6 from bao_cao_tai_chinh_chi_so_2012_56_cty where number = 'Min') ,(select z6 from bao_cao_tai_chinh_chi_so_2012_56_cty where number = 'Max')),
t7 =update_status( z7 ,(select z7 from bao_cao_tai_chinh_chi_so_2012_56_cty where number = 'Delta') ,(select z7 from bao_cao_tai_chinh_chi_so_2012_56_cty where number = 'Min') ,(select z7 from bao_cao_tai_chinh_chi_so_2012_56_cty where number = 'Max')),
t8 =update_status( z8 ,(select z8 from bao_cao_tai_chinh_chi_so_2012_56_cty where number = 'Delta') ,(select z8 from bao_cao_tai_chinh_chi_so_2012_56_cty where number = 'Min') ,(select z8 from bao_cao_tai_chinh_chi_so_2012_56_cty where number = 'Max')),
t9 =update_status( z9 ,(select z9 from bao_cao_tai_chinh_chi_so_2012_56_cty where number = 'Delta') ,(select z9 from bao_cao_tai_chinh_chi_so_2012_56_cty where number = 'Min') ,(select z9 from bao_cao_tai_chinh_chi_so_2012_56_cty where number = 'Max')),
t10 =update_status( z10 ,(select z10 from bao_cao_tai_chinh_chi_so_2012_56_cty where number = 'Delta') ,(select z10 from bao_cao_tai_chinh_chi_so_2012_56_cty where number = 'Min') ,(select z10 from bao_cao_tai_chinh_chi_so_2012_56_cty where number = 'Max')),
t11 =update_status( z11 ,(select z11 from bao_cao_tai_chinh_chi_so_2012_56_cty where number = 'Delta') ,(select z11 from bao_cao_tai_chinh_chi_so_2012_56_cty where number = 'Min') ,(select z11 from bao_cao_tai_chinh_chi_so_2012_56_cty where number = 'Max')),
t12 =update_status( z12 ,(select z12 from bao_cao_tai_chinh_chi_so_2012_56_cty where number = 'Delta') ,(select z12 from bao_cao_tai_chinh_chi_so_2012_56_cty where number = 'Min') ,(select z12 from bao_cao_tai_chinh_chi_so_2012_56_cty where number = 'Max')),
t13 =update_status( z13 ,(select z13 from bao_cao_tai_chinh_chi_so_2012_56_cty where number = 'Delta') ,(select z13 from bao_cao_tai_chinh_chi_so_2012_56_cty where number = 'Min') ,(select z13 from bao_cao_tai_chinh_chi_so_2012_56_cty where number = 'Max')),
t14 =update_status( z14 ,(select z14 from bao_cao_tai_chinh_chi_so_2012_56_cty where number = 'Delta') ,(select z14 from bao_cao_tai_chinh_chi_so_2012_56_cty where number = 'Min') ,(select z14 from bao_cao_tai_chinh_chi_so_2012_56_cty where number = 'Max')),
t15 =update_status( z15 ,(select z15 from bao_cao_tai_chinh_chi_so_2012_56_cty where number = 'Delta') ,(select z15 from bao_cao_tai_chinh_chi_so_2012_56_cty where number = 'Min') ,(select z15 from bao_cao_tai_chinh_chi_so_2012_56_cty where number = 'Max')),
t16 =update_status( z16 ,(select z16 from bao_cao_tai_chinh_chi_so_2012_56_cty where number = 'Delta') ,(select z16 from bao_cao_tai_chinh_chi_so_2012_56_cty where number = 'Min') ,(select z16 from bao_cao_tai_chinh_chi_so_2012_56_cty where number = 'Max'))
where time is not null


update bao_cao_tai_chinh_chi_so_2013_56_cty
set
t1 =update_status( z1 ,(select z1 from bao_cao_tai_chinh_chi_so_2013_56_cty where number = 'Delta') ,(select z1 from bao_cao_tai_chinh_chi_so_2013_56_cty where number = 'Min') ,(select z1 from bao_cao_tai_chinh_chi_so_2013_56_cty where number = 'Max')),
t2 =update_status( z2 ,(select z2 from bao_cao_tai_chinh_chi_so_2013_56_cty where number = 'Delta') ,(select z2 from bao_cao_tai_chinh_chi_so_2013_56_cty where number = 'Min') ,(select z2 from bao_cao_tai_chinh_chi_so_2013_56_cty where number = 'Max')),
t3 =update_status( z3 ,(select z3 from bao_cao_tai_chinh_chi_so_2013_56_cty where number = 'Delta') ,(select z3 from bao_cao_tai_chinh_chi_so_2013_56_cty where number = 'Min') ,(select z3 from bao_cao_tai_chinh_chi_so_2013_56_cty where number = 'Max')),
t4 =update_status( z4 ,(select z4 from bao_cao_tai_chinh_chi_so_2013_56_cty where number = 'Delta') ,(select z4 from bao_cao_tai_chinh_chi_so_2013_56_cty where number = 'Min') ,(select z4 from bao_cao_tai_chinh_chi_so_2013_56_cty where number = 'Max')),
t5 =update_status( z5 ,(select z5 from bao_cao_tai_chinh_chi_so_2013_56_cty where number = 'Delta') ,(select z5 from bao_cao_tai_chinh_chi_so_2013_56_cty where number = 'Min') ,(select z5 from bao_cao_tai_chinh_chi_so_2013_56_cty where number = 'Max')),
t6 =update_status( z6 ,(select z6 from bao_cao_tai_chinh_chi_so_2013_56_cty where number = 'Delta') ,(select z6 from bao_cao_tai_chinh_chi_so_2013_56_cty where number = 'Min') ,(select z6 from bao_cao_tai_chinh_chi_so_2013_56_cty where number = 'Max')),
t7 =update_status( z7 ,(select z7 from bao_cao_tai_chinh_chi_so_2013_56_cty where number = 'Delta') ,(select z7 from bao_cao_tai_chinh_chi_so_2013_56_cty where number = 'Min') ,(select z7 from bao_cao_tai_chinh_chi_so_2013_56_cty where number = 'Max')),
t8 =update_status( z8 ,(select z8 from bao_cao_tai_chinh_chi_so_2013_56_cty where number = 'Delta') ,(select z8 from bao_cao_tai_chinh_chi_so_2013_56_cty where number = 'Min') ,(select z8 from bao_cao_tai_chinh_chi_so_2013_56_cty where number = 'Max')),
t9 =update_status( z9 ,(select z9 from bao_cao_tai_chinh_chi_so_2013_56_cty where number = 'Delta') ,(select z9 from bao_cao_tai_chinh_chi_so_2013_56_cty where number = 'Min') ,(select z9 from bao_cao_tai_chinh_chi_so_2013_56_cty where number = 'Max')),
t10 =update_status( z10 ,(select z10 from bao_cao_tai_chinh_chi_so_2013_56_cty where number = 'Delta') ,(select z10 from bao_cao_tai_chinh_chi_so_2013_56_cty where number = 'Min') ,(select z10 from bao_cao_tai_chinh_chi_so_2013_56_cty where number = 'Max')),
t11 =update_status( z11 ,(select z11 from bao_cao_tai_chinh_chi_so_2013_56_cty where number = 'Delta') ,(select z11 from bao_cao_tai_chinh_chi_so_2013_56_cty where number = 'Min') ,(select z11 from bao_cao_tai_chinh_chi_so_2013_56_cty where number = 'Max')),
t12 =update_status( z12 ,(select z12 from bao_cao_tai_chinh_chi_so_2013_56_cty where number = 'Delta') ,(select z12 from bao_cao_tai_chinh_chi_so_2013_56_cty where number = 'Min') ,(select z12 from bao_cao_tai_chinh_chi_so_2013_56_cty where number = 'Max')),
t13 =update_status( z13 ,(select z13 from bao_cao_tai_chinh_chi_so_2013_56_cty where number = 'Delta') ,(select z13 from bao_cao_tai_chinh_chi_so_2013_56_cty where number = 'Min') ,(select z13 from bao_cao_tai_chinh_chi_so_2013_56_cty where number = 'Max')),
t14 =update_status( z14 ,(select z14 from bao_cao_tai_chinh_chi_so_2013_56_cty where number = 'Delta') ,(select z14 from bao_cao_tai_chinh_chi_so_2013_56_cty where number = 'Min') ,(select z14 from bao_cao_tai_chinh_chi_so_2013_56_cty where number = 'Max')),
t15 =update_status( z15 ,(select z15 from bao_cao_tai_chinh_chi_so_2013_56_cty where number = 'Delta') ,(select z15 from bao_cao_tai_chinh_chi_so_2013_56_cty where number = 'Min') ,(select z15 from bao_cao_tai_chinh_chi_so_2013_56_cty where number = 'Max')),
t16 =update_status( z16 ,(select z16 from bao_cao_tai_chinh_chi_so_2013_56_cty where number = 'Delta') ,(select z16 from bao_cao_tai_chinh_chi_so_2013_56_cty where number = 'Min') ,(select z16 from bao_cao_tai_chinh_chi_so_2013_56_cty where number = 'Max'))where time is not null



create table cong_ty_nganh(number text,ma_nganh int);

copy cong_ty_nganh(number,ma_nganh)
from '/Users/mc976/google_drive/00_Finance_project/02_tai_lieu_Tran/04_insert_database/cong_ty_nganh.txt'

select * from cong_ty_nganh where ma_nganh = 1;

select * from bao_cao_tai_chinh_chi_so_2012_56_cty where number in (select number from cong_ty_nganh where ma_nganh = 1)
select * from bao_cao_tai_chinh_chi_so_2013_56_cty where number in (select number from cong_ty_nganh where ma_nganh = 1)

select distinct number from bao_cao_tai_chinh_chi_so_2012_56_cty

drop table bao_cao_tai_chinh_chi_so_2012_56_cty_converted

select number,time, t1,t2,t3,t4,t5,t6,t7,t8,t9,t10,t11,t12,t13,t14,t15,t16 into bao_cao_tai_chinh_chi_so_2012_56_cty_converted
from bao_cao_tai_chinh_chi_so_2012_56_cty
where t1 is not null and t2 is not null and t3 is not null and t4 is not null and t5 is not null and t6 is not null and t7 is not null and t8 is not null and t9 is not null and t10 is not null and t11 is not null and t12 is not null and t13 is not null and t14 is not null and t15 is not null and t16 is not null
and time is not null
and number in (select number from cong_ty_nganh where ma_nganh = 1)
order by number, time

drop table bao_cao_tai_chinh_chi_so_2013_56_cty_converted
select number,time, t1,t2,t3,t4,t5,t6,t7,t8,t9,t10,t11,t12,t13,t14,t15,t16 into bao_cao_tai_chinh_chi_so_2013_56_cty_converted
from bao_cao_tai_chinh_chi_so_2013_56_cty
where t1 is not null and t2 is not null and t3 is not null and t4 is not null and t5 is not null and t6 is not null and t7 is not null and t8 is not null and t9 is not null and t10 is not null and t11 is not null and t12 is not null and t13 is not null and t14 is not null and t15 is not null and t16 is not null
and time is not null
and number in (select number from cong_ty_nganh where ma_nganh = 1)
order by number, time

select number,time,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14,v15,v16 into bao_cao_tai_chinh_chi_so_2012_56_cty_converted2
from bao_cao_tai_chinh_chi_so_2012_56_cty
where v1 is not null and v2 is not null and v3 is not null and v4 is not null and v5 is not null and v6 is not null and v7 is not null and v8 is not null and v9 is not null and v10 is not null and v11 is not null and v12 is not null and v13 is not null and v14 is not null and v15 is not null and v16 is not null
and time is not null
and number in (select number from cong_ty_nganh where ma_nganh = 1)
order by number, time

select number,time,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14,v15,v16 into bao_cao_tai_chinh_chi_so_2013_56_cty_converted2
from bao_cao_tai_chinh_chi_so_2013_56_cty
where v1 is not null and v2 is not null and v3 is not null and v4 is not null and v5 is not null and v6 is not null and v7 is not null and v8 is not null and v9 is not null and v10 is not null and v11 is not null and v12 is not null and v13 is not null and v14 is not null and v15 is not null and v16 is not null
and time is not null
and number in (select number from cong_ty_nganh where ma_nganh = 1)
order by number, time

delete from bao_cao_tai_chinh_chi_so_2012_56_cty_converted where number = 'API'
select t5, count(*) from bao_cao_tai_chinh_chi_so_2012_56_cty_converted group by t5
select t1, count(*) from bao_cao_tai_chinh_chi_so_2013_56_cty_converted group by t1

select b.t1 as" NetIncome/sales_2012",b.t2 as" NetIncome/assets_2012",b.t3 as" EarningbeforeInterestandtaxes/assets_2012",b.t4 as" Netincomebeforeextraordinaryitems/assets_2012",b.t5 as" Netincomebeforeextraordinaryitems/stockholdersequity_2012",b.t6 as" Cash/currentliabilities_2012",b.t7 as" Sales/Assets_2012",b.t8 as" Costofgoodsold/inventory_2012",b.t9 as" Accountreceivable/sales_2012",b.t10 as" Liabilities/stockholdersequity_2012",b.t11 as" Assets/stockholdersequity_2012",b.t12 as" Longtermdebt/assets_2012",b.t13 as" Liabilities/Assets_2012",b.t14 as" Currentassets/currentliabilities_2012",b.t15 as" Quickassets/currentliabilities_2012",b.t16 as" Cash/assets_2012",
a.t1 as" NetIncome/sales_2013",a.t2 as" NetIncome/assets_2013",a.t3 as" EarningbeforeInterestandtaxes/assets_2013",a.t4 as" Netincomebeforeextraordinaryitems/assets_2013",a.t5 as" Netincomebeforeextraordinaryitems/stockholdersequity_2013",a.t6 as" Cash/currentliabilities_2013",a.t7 as" Sales/Assets_2013",a.t8 as" Costofgoodsold/inventory_2013",a.t9 as" Accountreceivable/sales_2013",a.t10 as" Liabilities/stockholdersequity_2013",a.t11 as" Assets/stockholdersequity_2013",a.t12 as" Longtermdebt/assets_2013",a.t13 as" Liabilities/Assets_2013",a.t14 as" Currentassets/currentliabilities_2013",a.t15 as" Quickassets/currentliabilities_2013",a.t16 as" Cash/assets_2013"
from bao_cao_tai_chinh_chi_so_2013_56_cty_converted a
join bao_cao_tai_chinh_chi_so_2012_56_cty_converted b on a.number = b.number
where a.time = '2013' and b.time = '2012'

select a.t1 as" NetIncome/sales_2013",a.t2 as" NetIncome/assets_2013",a.t3 as" EarningbeforeInterestandtaxes/assets_2013",a.t4 as" Netincomebeforeextraordinaryitems/assets_2013",a.t5 as" Netincomebeforeextraordinaryitems/stockholdersequity_2013",a.t6 as" Cash/currentliabilities_2013",a.t7 as" Sales/Assets_2013",a.t8 as" Costofgoodsold/inventory_2013",a.t9 as" Accountreceivable/sales_2013",a.t10 as" Liabilities/stockholdersequity_2013",a.t11 as" Assets/stockholdersequity_2013",a.t12 as" Longtermdebt/assets_2013",a.t13 as" Liabilities/Assets_2013",a.t14 as" Currentassets/currentliabilities_2013",a.t15 as" Quickassets/currentliabilities_2013",a.t16 as" Cash/assets_2013"
from bao_cao_tai_chinh_chi_so_2013_56_cty_converted a where a.time = '2013'

select b.v1 as" NetIncome/sales_2012",b.v2 as" NetIncome/assets_2012",b.v3 as" EarningbeforeInterestandtaxes/assets_2012",b.v4 as" Netincomebeforeextraordinaryitems/assets_2012",b.v5 as" Netincomebeforeextraordinaryitems/stockholdersequity_2012",b.v6 as" Cash/currentliabilities_2012",b.v7 as" Sales/Assets_2012",b.v8 as" Costofgoodsold/inventory_2012",b.v9 as" Accountreceivable/sales_2012",b.v10 as" Liabilities/stockholdersequity_2012",b.v11 as" Assets/stockholdersequity_2012",b.v12 as" Longtermdebt/assets_2012",b.v13 as" Liabilities/Assets_2012",b.v14 as" Currentassets/currentliabilities_2012",b.v15 as" Quickassets/currentliabilities_2012",b.v16 as" Cash/assets_2012",
a.v1 as" NetIncome/sales_2013",a.v2 as" NetIncome/assets_2013",a.v3 as" EarningbeforeInterestandtaxes/assets_2013",a.v4 as" Netincomebeforeextraordinaryitems/assets_2013",a.v5 as" Netincomebeforeextraordinaryitems/stockholdersequity_2013",a.v6 as" Cash/currentliabilities_2013",a.v7 as" Sales/Assets_2013",a.v8 as" Costofgoodsold/inventory_2013",a.v9 as" Accountreceivable/sales_2013",a.v10 as" Liabilities/stockholdersequity_2013",a.v11 as" Assets/stockholdersequity_2013",a.v12 as" Longtermdebt/assets_2013",a.v13 as" Liabilities/Assets_2013",a.v14 as" Currentassets/currentliabilities_2013",a.v15 as" Quickassets/currentliabilities_2013",a.v16 as" Cash/assets_2013"
from bao_cao_tai_chinh_chi_so_2013_56_cty_converted2 a
join bao_cao_tai_chinh_chi_so_2012_56_cty_converted2 b on a.number = b.number
where a.time = '2013' and b.time = '2012'
order by a.number

select a.v1 as" NetIncome/sales_2013",a.v2 as" NetIncome/assets_2013",a.v3 as" EarningbeforeInterestandtaxes/assets_2013",a.v4 as" Netincomebeforeextraordinaryitems/assets_2013",a.v5 as" Netincomebeforeextraordinaryitems/stockholdersequity_2013",a.v6 as" Cash/currentliabilities_2013",a.v7 as" Sales/Assets_2013",a.v8 as" Costofgoodsold/inventory_2013",a.v9 as" Accountreceivable/sales_2013",a.v10 as" Liabilities/stockholdersequity_2013",a.v11 as" Assets/stockholdersequity_2013",a.v12 as" Longtermdebt/assets_2013",a.v13 as" Liabilities/Assets_2013",a.v14 as" Currentassets/currentliabilities_2013",a.v15 as" Quickassets/currentliabilities_2013",a.v16 as" Cash/assets_2013"
from bao_cao_tai_chinh_chi_so_2013_56_cty_converted2 a where a.time = '2013'


select  v3,count(*) from bao_cao_tai_chinh_chi_so_2012_56_cty_converted2 group by v3
select * from bao_cao_tai_chinh_chi_so_2012_56_cty where time is not null  order by f8
select max(z1),min(z1) from bao_cao_tai_chinh_chi_so_2013_56_cty where time is not null
