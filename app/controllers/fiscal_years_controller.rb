class FiscalYearsController < ApplicationController
    before_action :set_company
  
    def index
      @fiscal_years = @company.fiscal_years
    end
  
    private
  
    def set_company
      @company = Company.find(params[:company_id])
    end
  end
  