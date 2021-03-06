class Companies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
    	t.string :ma_ck
    	t.string :san_ck
    	t.string :gia_hien_tai
    	t.string :gia_so_sach
    	t.string :p_d
    	t.string :cao_nhat_52_tuan
    	t.string :thap_nhat_52_tuan
    	t.string :eps
    	t.string :pe
    	t.string :roa
    	t.string :roe
    	t.string :beta
    	t.string :khoi_luong_luu_hanh
    	t.string :khoi_luong_niem_yet
    	t.string :co_phieu_quy
    	t.string :nuoc_ngoai_so_huu
    	t.string :von_thi_truong
    	t.string :danh_thu_ttm_trieu
    	t.string :lnst_ttm
    	t.string :von_csh
    	t.string :tong_no
    	t.string :tong_tai_san
    	t.string :ten_cong_ty
    	t.string :ten_quoc_te
    	t.text 	 :dia_chi
    	t.string :dien_thoai
    	t.string :fax
    	t.string :website
    	
        t.timestamps
    end

    create_table :stocks do |t|
        t.string :ticker  
        t.datetime :date
        t.string :open    
        t.string :high    
        t.string :low     
        t.string :close
        t.string :volume      

    end

    create_table :financial_reports do |t|
        t.string  :ticker
        t.integer :year
        t.integer :quater
        t.decimal :current_assets
        t.decimal :cash_and_cash_euivalents
        t.decimal :short_term_financial_investment
        t.decimal :short_term_account_receivables
        t.decimal :inventory
        t.decimal :other_current_assets
        t.decimal :non_current_assets
        t.decimal :long_term_account_receivable
        t.decimal :fixed_assets
        t.decimal :loi_the_thuong_mai
        t.decimal :real_estate_investment
        t.decimal :long_term_finacial_investments
        t.decimal :other_long_term_assets
        t.decimal :total_assets
        t.decimal :liabilities
        t.decimal :short_term_liabilities
        t.decimal :long_term_liabilities
        t.decimal :owners_equity
        t.decimal :loi_ich_co_dong_thieu_so
        t.decimal :total_equity
        t.decimal :gross_sale_revenues
        t.decimal :deduction_revenues
        t.decimal :net_sales
        t.decimal :cost_of_goods_sold
        t.decimal :gross_profit
        t.decimal :financial_activities_revenues
        t.decimal :financial_expenses
        t.decimal :selling_expenses
        t.decimal :managing_expenses
        t.decimal :net_profit_from_operating_activities
        t.decimal :other_incomes
        t.decimal :other_expenses
        t.decimal :other_profits
        t.decimal :total_profit_before_tax
        t.decimal :profit_after_corporate_income_tax
        t.decimal :ebitda

        t.timestamps
    end
  end
end
