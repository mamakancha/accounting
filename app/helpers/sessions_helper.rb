module SessionsHelper
    # Logs in the given company.
    def log_in(company)
      session[:company_id] = company.id
    end
  
    # Logs out the current company.
    def log_out
      session.delete(:company_id)
      @current_company = nil
    end
  
    # Returns the current logged-in company (if any).
    def current_company
      @current_company ||= Company.find_by(id: session[:company_id])
    end
  
    # Returns true if the company is logged in, false otherwise.
    def logged_in?
      !current_company.nil?
    end
  end
  