Rails.application.routes.draw do
  resources :asset_transactions
  resources :assets
  resources :cash_transactions
  resources :funds
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
