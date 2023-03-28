class SessionsController < ApplicationController
    def new
      # Render the login form
    end
  
    def create
      company = Company.find_by(email: params[:email])
      if company && company.authenticate(params[:password])
        session[:company_id] = company.id
        redirect_to company_fiscal_years_path(company)
      else
        flash.now[:alert] = 'Invalid email/password combination'
        render 'new'
      end
    end
  
    def destroy
      session.delete(:company_id)
      redirect_to login_path
    end
  end
  