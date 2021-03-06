Rails.application.routes.draw do
  resources :quotations
  resources :close_prices
  resources :cash_transactions
  resources :security_transactions
  resources :securities
  resources :funds

  get "/portfolios/:id/:date", to: "portfolios#index"
  get "/security_transactions_with_security_name/:id/:date", to: "security_transactions#show_with_security_name"

  get "/security_transactions_with_security_name", to: "security_transactions#all_with_security_name"

  get "/cash_transactions/:id/:date", to: "cash_transactions#filter_date" 
  get "/cash_transactions_with_funds", to: "cash_transactions#transactions_with_funds" 

  get "/cash_liquid/:id/:date", to: "portfolios#cash_liquid"
  get "/security_liquid/:id/:date", to: "portfolios#security_liquid"
  
  get "/securities_filtered", to: "securities#filter_securities"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
