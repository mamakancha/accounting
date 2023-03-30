class SessionsController < ApplicationController
include SessionsHelper
  def new
  end

  # def create
  #   company = Company.find_by(email: params[:session][:email])
  #   if company && company.authenticate(params[:session][:password])
  #     log_in company
  #     respond_to do |format|
  #       format.turbo_stream { turbo_stream.replace "login_form", partial: "sessions/empty" }
  #       format.html { redirect_to root_path }
  #     end
  #   else
  #     flash.now[:danger] = "Invalid email/password combination"
  #     render "new"
  #   end
  # end

  def create
    company = Company.find_by(email: params[:session][:email])
    if company && company.authenticate(params[:session][:password])
      log_in company
      redirect_to root_path
    else
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end
  
  

  def destroy
    log_out
    redirect_to root_url
  end
end
