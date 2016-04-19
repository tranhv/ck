DELETE FROM financial_reports
WHERE ticker in ('PFL','API') or ticker in (select ma_ck from company_businesses where ma_nganh != 1) or quater != 0;

UPDATE financial_reports
set quater = null;

DROP TABLE IF EXISTS financial_reports_2012;
DROP TABLE IF EXISTS financial_reports_2013;
DROP TABLE IF EXISTS financial_reports_2014;
DROP TABLE IF EXISTS financial_reports_2015;


SELECT * into financial_reports_2012 FROM financial_reports WHERE year = '2012';
SELECT * into financial_reports_2013 FROM financial_reports WHERE year = '2013';
SELECT * into financial_reports_2014 FROM financial_reports WHERE year = '2014';
SELECT * into financial_reports_2015 FROM financial_reports WHERE year = '2015';
