# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160131072933) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "businesses", force: :cascade do |t|
    t.integer  "ma_nganh"
    t.string   "ten_nganh"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "companies", force: :cascade do |t|
    t.string   "ma_ck"
    t.string   "san_ck"
    t.string   "gia_hien_tai"
    t.string   "gia_so_sach"
    t.string   "p_d"
    t.string   "cao_nhat_52_tuan"
    t.string   "thap_nhat_52_tuan"
    t.string   "eps"
    t.string   "pe"
    t.string   "roa"
    t.string   "roe"
    t.string   "beta"
    t.string   "khoi_luong_luu_hanh"
    t.string   "khoi_luong_niem_yet"
    t.string   "co_phieu_quy"
    t.string   "nuoc_ngoai_so_huu"
    t.string   "von_thi_truong"
    t.string   "danh_thu_ttm_trieu"
    t.string   "lnst_ttm"
    t.string   "von_csh"
    t.string   "tong_no"
    t.string   "tong_tai_san"
    t.string   "ten_cong_ty"
    t.string   "ten_quoc_te"
    t.text     "dia_chi"
    t.string   "dien_thoai"
    t.string   "fax"
    t.string   "website"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "company_businesses", force: :cascade do |t|
    t.string   "ma_ck"
    t.integer  "ma_nganh"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "financial_reports", force: :cascade do |t|
    t.string   "ticker"
    t.integer  "year"
    t.integer  "quater"
    t.decimal  "current_assets"
    t.decimal  "cash_and_cash_euivalents"
    t.decimal  "short_term_financial_investment"
    t.decimal  "short_term_account_receivables"
    t.decimal  "inventory"
    t.decimal  "other_current_assets"
    t.decimal  "non_current_assets"
    t.decimal  "long_term_account_receivable"
    t.decimal  "fixed_assets"
    t.decimal  "loi_the_thuong_mai"
    t.decimal  "real_estate_investment"
    t.decimal  "long_term_finacial_investments"
    t.decimal  "other_long_term_assets"
    t.decimal  "total_assets"
    t.decimal  "liabilities"
    t.decimal  "short_term_liabilities"
    t.decimal  "long_term_liabilities"
    t.decimal  "owners_equity"
    t.decimal  "loi_ich_co_dong_thieu_so"
    t.decimal  "total_equity"
    t.decimal  "gross_sale_revenues"
    t.decimal  "deduction_revenues"
    t.decimal  "net_sales"
    t.decimal  "cost_of_goods_sold"
    t.decimal  "gross_profit"
    t.decimal  "financial_activities_revenues"
    t.decimal  "financial_expenses"
    t.decimal  "selling_expenses"
    t.decimal  "managing_expenses"
    t.decimal  "net_profit_from_operating_activities"
    t.decimal  "other_incomes"
    t.decimal  "other_expenses"
    t.decimal  "other_profits"
    t.decimal  "total_profit_before_tax"
    t.decimal  "profit_after_corporate_income_tax"
    t.decimal  "ebitda"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.decimal  "f1"
    t.decimal  "f2"
    t.decimal  "f3"
    t.decimal  "f4"
    t.decimal  "f5"
    t.decimal  "f6"
    t.decimal  "f7"
    t.decimal  "f8"
    t.decimal  "f9"
    t.decimal  "f10"
    t.decimal  "f11"
    t.decimal  "f12"
    t.decimal  "f13"
    t.decimal  "f14"
    t.decimal  "f15"
    t.decimal  "f16"
    t.decimal  "v1"
    t.decimal  "v2"
    t.decimal  "v3"
    t.decimal  "v4"
    t.decimal  "v5"
    t.decimal  "v6"
    t.decimal  "v7"
    t.decimal  "v8"
    t.decimal  "v9"
    t.decimal  "v10"
    t.decimal  "v11"
    t.decimal  "v12"
    t.decimal  "v13"
    t.decimal  "v14"
    t.decimal  "v15"
    t.decimal  "v16"
    t.decimal  "z1"
    t.decimal  "z2"
    t.decimal  "z3"
    t.decimal  "z4"
    t.decimal  "z5"
    t.decimal  "z6"
    t.decimal  "z7"
    t.decimal  "z8"
    t.decimal  "z9"
    t.decimal  "z10"
    t.decimal  "z11"
    t.decimal  "z12"
    t.decimal  "z13"
    t.decimal  "z14"
    t.decimal  "z15"
    t.decimal  "z16"
  end

  create_table "stocks", force: :cascade do |t|
    t.string   "ticker"
    t.datetime "date"
    t.string   "open"
    t.string   "high"
    t.string   "low"
    t.string   "close"
    t.string   "volume"
  end

end
