Rails.application.routes.draw do
    
    resources :send_addresses
    resources :cart_items, only: [:index,:create,:destroy,:reset]
    
    
    end
