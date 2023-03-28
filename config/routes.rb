Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
 
  # Custom route for logging in
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  resources :companies, only: [] do
    resources :fiscal_years, only: [:index] do
      resources :monthly_reports, only: [:index], shallow: true do
        resources :expense_revenues, only: [:index]
      end
    end
  end

  resources :categories, only: [:index, :show]

  
end
