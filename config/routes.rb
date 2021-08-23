Rails.application.routes.draw do

 scope module: :public do
    resources :send_addresses
    resources :cart_items
    delete 'cart_items' => 'cart_items#reset'
 end


  devise_for :admins, controllers: {
    sessions: 'admin/sessions',
    passwords: 'admin/passwords',
    registrations: 'admin/registrations'
  }

  devise_for :customers, controllers: {
    sessions: 'public/sessions',
    passwords: 'public/passwords',
    registrations: 'public/registrations'
  }



  scope module: :public do
    root to: 'homes#top'
    get "about" => "homes#about" , as: "about"
  end

end
