class CompanyController < ApplicationController
  
  # Comment for functional
  def show 
    com_id = params[:id]
    @com = Company.where(['id = ?', com_id]).first
    @data = {}
    reports = FinancialReport.where(:ticker => @com.ma_ck)
    reports.each_with_index do |e, index| 

      if index == 0
        @data["Tài sản hiện tại"] = {e["year"] => e["current_assets"]}
        @data["Tiền và các khoản tương đương tiền"] = {e["year"] => e["cash_and_cash_euivalents"]}
        @data["Đầu tư ngắn hạn"] = {e["year"] => e["short_term_financial_investment"]}
        @data["Các khoản phải thu ngắn hạn"] = {e["year"] => e["short_term_account_receivables"]}
        @data["Hàng Tồn Kho"] = {e["year"] => e["inventory"]}
        @data["Tài sản ngắn hạn khác"] = {e["year"] => e["other_current_assets"]}
        @data["Không phải tài sản"] = {e["year"] => e["non_current_assets"]}
        @data["Các khoản phải thu dài hạn"] = {e["year"] => e["long_term_account_receivable"]}
        @data["Tài sản cố định"] = {e["year"] => e["fixed_assets"]}
        @data["Lợi thế thương mại"] = {e["year"] => e["loi_the_thuong_mai"]}
        @data["Bất động sản đầu tư"] = {e["year"] => e["real_estate_investment"]}
        @data["Đầu tư tài chính dài hạn"] = {e["year"] => e["long_term_finacial_investments"]}
        @data["Tổng tài sản dài hạn khác"] = {e["year"] => e["other_long_term_assets"]}
        @data["Tổng tài sản"] = {e["year"] => e["total_assets"]}
        @data["Tổng nợ"] = {e["year"] => e["liabilities"]}
        @data["Nợ ngắn hạn"] = {e["year"] => e["short_term_liabilities"]}
        @data["Nợ dài hạn"] = {e["year"] => e["long_term_liabilities"]}
        @data["Vốn chủ sở hữu"] = {e["year"] => e["owners_equity"]}
        @data["Lợi ích cổ đông tối thiểu"] = {e["year"] => e["loi_ich_co_dong_thieu_so"]}
        @data["Tổng thu nhập từ việc bán hàng "] = {e["year"] => e["gross_sale_revenues"]}
        @data["Khoản giảm trừ"] = {e["year"] => e["deduction_revenues"]}
        @data["Doanh thu thuần"] = {e["year"] => e["net_sales"]}
        @data["Giá vốn bán hàng"] = {e["year"] => e["cost_of_goods_sold"]}
        @data["Lợi nhuận gộp"] = {e["year"] => e["gross_profit"]}
        @data["Tổng danh thoan thu hoạt động tài chính"] = {e["year"] => e["financial_activities_revenues"]}
        @data["Chi phí tài chính"] = {e["year"] => e["financial_expenses"]}
        @data["Chi phí bán hàng"] = {e["year"] => e["selling_expenses"]}
        @data["Chi phí quản lý doanh nghiệp"] = {e["year"] => e["managing_expenses"]}
        @data["Lợp nhuận thuần từ hoạt động kinh doanh"] = {e["year"] => e["net_profit_from_operating_activities"]}
        @data["Thu nhập khác"] = {e["year"] => e["other_incomes"]}
        @data["Chi phí khác"] = {e["year"] => e["other_expenses"]}
        @data["Lợi nhuận khác"] = {e["year"] => e["other_profits"]}
        @data["Lợi nhuận kế toán trước thuế"] = {e["year"] => e["total_profit_before_tax"]}
        @data["Lợi nhuận sau thuế thu nhập"] = {e["year"] => e["profit_after_corporate_income_tax"]}
        @data["Ebitda"] = {e["year"] => e["ebitda"]}
        else
        @data["Tài sản hiện tại"].merge!({e["year"] => e["current_assets"]})
        @data["Tiền và các khoản tương đương tiền"].merge!({e["year"] => e["cash_and_cash_euivalents"]})
        @data["Đầu tư ngắn hạn"].merge!({e["year"] => e["short_term_financial_investment"]})
        @data["Các khoản phải thu ngắn hạn"].merge!({e["year"] => e["short_term_account_receivables"]})
        @data["Hàng Tồn Kho"].merge!({e["year"] => e["inventory"]})
        @data["Tài sản ngắn hạn khác"].merge!({e["year"] => e["other_current_assets"]})
        @data["Không phải tài sản"].merge!({e["year"] => e["non_current_assets"]})
        @data["Các khoản phải thu dài hạn"].merge!({e["year"] => e["long_term_account_receivable"]})
        @data["Tài sản cố định"].merge!({e["year"] => e["fixed_assets"]})
        @data["Lợi thế thương mại"].merge!({e["year"] => e["loi_the_thuong_mai"]})
        @data["Bất động sản đầu tư"].merge!({e["year"] => e["real_estate_investment"]})
        @data["Đầu tư tài chính dài hạn"].merge!({e["year"] => e["long_term_finacial_investments"]})
        @data["Tổng tài sản dài hạn khác"].merge!({e["year"] => e["other_long_term_assets"]})
        @data["Tổng tài sản"].merge!({e["year"] => e["total_assets"]})
        @data["Tổng nợ"].merge!({e["year"] => e["liabilities"]})
        @data["Nợ ngắn hạn"].merge!({e["year"] => e["short_term_liabilities"]})
        @data["Nợ dài hạn"].merge!({e["year"] => e["long_term_liabilities"]})
        @data["Vốn chủ sở hữu"].merge!({e["year"] => e["owners_equity"]})
        @data["Lợi ích cổ đông tối thiểu"].merge!({e["year"] => e["loi_ich_co_dong_thieu_so"]})
        @data["Tổng thu nhập từ việc bán hàng "].merge!({e["year"] => e["gross_sale_revenues"]})
        @data["Khoản giảm trừ"].merge!({e["year"] => e["deduction_revenues"]})
        @data["Doanh thu thuần"].merge!({e["year"] => e["net_sales"]})
        @data["Giá vốn bán hàng"].merge!({e["year"] => e["cost_of_goods_sold"]})
        @data["Lợi nhuận gộp"].merge!({e["year"] => e["gross_profit"]})
        @data["Tổng danh thoan thu hoạt động tài chính"].merge!({e["year"] => e["financial_activities_revenues"]})
        @data["Chi phí tài chính"].merge!({e["year"] => e["financial_expenses"]})
        @data["Chi phí bán hàng"].merge!({e["year"] => e["selling_expenses"]})
        @data["Chi phí quản lý doanh nghiệp"].merge!({e["year"] => e["managing_expenses"]})
        @data["Lợp nhuận thuần từ hoạt động kinh doanh"].merge!({e["year"] => e["net_profit_from_operating_activities"]})
        @data["Thu nhập khác"].merge!({e["year"] => e["other_incomes"]})
        @data["Chi phí khác"].merge!({e["year"] => e["other_expenses"]})
        @data["Lợi nhuận khác"].merge!({e["year"] => e["other_profits"]})
        @data["Lợi nhuận kế toán trước thuế"].merge!({e["year"] => e["total_profit_before_tax"]})
        @data["Lợi nhuận sau thuế thu nhập"].merge!({e["year"] => e["profit_after_corporate_income_tax"]})
        @data["Ebitda"].merge!({e["year"] => e["ebitda"]})
      end
    end
  end

  def Convert
    # data = {}
    # data["current_assets"] => "Tài sản hiện tại"
    # data["cash_and_cash_euivalents"] => "Tiền và các khoản tương đương tiền"
    # data["short_term_financial_investment"] => "Đầu tư ngắn hạn"
    # data["short_term_account_receivables"] => "Các khoản phải thu ngắn hạn"
    # data["inventory"] => "Hàng Tồn Kho"
    # data["other_current_assets"] => "Tài sản ngắn hạn khác"
    # data["non_current_assets"] => "Không phải tài sản"
    # data["long_term_account_receivable"] => "Các khoản phải thu dài hạn"
    # data["fixed_assets"] => "Tài sản cố định"
    # data["loi_the_thuong_mai"] => "Lợi thế thương mại"
    # data["real_estate_investment"] => "Bất động sản đầu tư"
    # data["long_term_finacial_investments"] => "Đầu tư tài chính dài hạn"
    # data["other_long_term_assets"] => "Tổng tài sản dài hạn khác"
    # data["total_assets"] => "Tổng tài sản"
    # data["liabilities"] => "Tổng nợ"
    # data["short_term_liabilities"] => "Nợ ngắn hạn"
    # data["long_term_liabilities"] => "Nợ dài hạn"
    # data["owners_equity"] => "Vốn chủ sở hữu"
    # data["loi_ich_co_dong_thieu_so"] => "Lợi ích cổ đông tối thiểu"
    # data["gross_sale_revenues"] => "Tổng thu nhập từ việc bán hàng "
    # data["deduction_revenues"] => "Khoản giảm trừ"
    # data["net_sales"] => "Doanh thu thuần"
    # data["cost_of_goods_sold"] => "Giá vốn bán hàng"
    # data["gross_profit"] => "Lợi nhuận gộp"
    # data["financial_activities_revenues"] => "Tổng danh thoan thu hoạt động tài chính"
    # data["financial_expenses"] => "Chi phí tài chính"
    # data["selling_expenses"] => "Chi phí bán hàng"
    # data["managing_expenses"] => "Chi phí quản lý doanh nghiệp"
    # data["net_profit_from_operating_activities"] => "Lợp nhuận thuần từ hoạt động kinh doanh"
    # data["other_incomes"] => "Thu nhập khác"
    # data["other_expenses"] => "Chi phí khác"
    # data["other_profits"] => "Lợi nhuận khác"
    # data["total_profit_before_tax"] => "Lợi nhuận kế toán trước thuế"
    # data["profit_after_corporate_income_tax"] => "Lợi nhuận sau thuế thu nhập"
    # data["ebitda"] => "Ebitda"

    # data
  end

end
