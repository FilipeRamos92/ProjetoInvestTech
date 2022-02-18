Rails.application.routes.draw do
  resources :cash_transactions
  resources :security_transactions
  resources :securities
  resources :funds

  get "/portfolios/:id/:date", to: "portfolios#index"

  get "/cash_transactions/:id/:date", to: "cash_transactions#filter_date" 
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
