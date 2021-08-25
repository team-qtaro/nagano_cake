Rails.application.routes.draw do
  scope module: :public do
    resources :orders,only: [:index,:show,:new,:create] do
      collection do
        post 'confirm'
        get 'complete'
      end
    end
  end
  
  namespace :admin do
    resources :genres,only: [:index,:new,:create,:edit,:update]
  end

 scope module: :public do
    resources :send_addresses
    resources :cart_items
    delete 'cart_items' => 'cart_items#reset'
 end

  namespace :admin do
    resources :items, only: [:index, :new, :create, :show, :edit, :update]
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
    resources :customers, only: [:show, :edit, :update]
    get 'customers/confirm'
    patch 'customers/quit'

  end

end