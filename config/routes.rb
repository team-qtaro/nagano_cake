Rails.application.routes.draw do
 namespace :admin do
 end
 scope module: :public do
    resources :send_addresses
    resources :cart_items
    delete 'cart_items' => 'cart_items#reset'
 end
 

    
   
    
 end
