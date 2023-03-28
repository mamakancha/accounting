class MonthlyReportsController < ApplicationController
    before_action :set_fiscal_year
  
    def index
      @monthly_reports = @fiscal_year.monthly_reports
    end
  
    private
  
    def set_fiscal_year
      @fiscal_year = FiscalYear.find(params[:fiscal_year_id])
    end
  end
  