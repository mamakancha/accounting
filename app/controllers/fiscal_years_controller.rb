class FiscalYearsController < ApplicationController
    before_action :set_company
    before_action :require_login
  
    def index
      @fiscal_years = @company.fiscal_years
    end
  
    private
  
    def set_company
      @company = Company.find(params[:company_id])
    end

    def require_login
        unless session[:company_id]
          flash[:error] = "You must be logged in to access this section"
          redirect_to login_path
        end
      end
  end
  