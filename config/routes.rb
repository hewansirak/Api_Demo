Rails.application.routes.draw do
  resources :invoice_items, except: [:index]
  resources :invoices, except: [:index] do
    member do
      get "items", controller: :invoice_items, action: :index
    end
  end
  resources :items
  resources :customers do
    member do
      get "invoices", controller: :invoices, action: :index
    end
  end
  resources :people
end
