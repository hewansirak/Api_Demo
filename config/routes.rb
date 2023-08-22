Rails.application.routes.draw do
  resources :invoice_items
  resources :invoices
  resources :items
  resources :customers
  resources :people
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
