Rails.application.routes.draw do
  resources :cash_transactions
  resources :security_transactions
  resources :securities
  resources :funds

  get "/portfolios/:id/:date", to: "portfolios#index"

  get "/cash_transactions/:id/:date", to: "cash_transactions#filter_date" 

  get "/cash_liquid/:id/:date", to: "portfolios#cash_liquid"
  get "/security_liquid/:id/:date", to: "portfolios#security_liquid"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
