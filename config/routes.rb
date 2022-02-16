Rails.application.routes.draw do
  resources :cash_transactions
  resources :security_transactions
  resources :securities
  resources :funds
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
