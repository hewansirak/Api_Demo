Rails.application.routes.draw do
  resources :invoice_items
  resources :invoices, except: [:index]
  resources :items
  resources :customers do
    member do
      get "invoices", controller: :invoices, action: :index
    end
  end
  resources :people
end
