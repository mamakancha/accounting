class ExpenseRevenuesController < ApplicationController
    before_action :set_monthly_report
  
    def index
      @monthly_report = MonthlyReport.find(params[:monthly_report_id])
      @fiscal_year = @monthly_report.fiscal_year
      @expense_revenues = @monthly_report.expense_revenues
    end
  
    private
  
    def set_monthly_report
      @monthly_report = MonthlyReport.find(params[:monthly_report_id])
    end
  end
  