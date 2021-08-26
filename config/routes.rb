Rails.application.routes.draw do

  scope module: :public do
    root to: 'homes#top'
    get "about" => "homes#about", as: "about"

    get 'customers/mypage' => 'customers#show'
    get 'customers/edit' => 'customers#edit'
    patch 'customers' => 'customers#update'
    get 'customers/quit' => 'customers#confirm'
    patch 'customers' => 'customers#quit'

    resources :orders,only: [:index,:show,:new] do
      collection do
        post 'confirm'
        get 'complete'
      end
    post 'orders/confirm' => 'orders#create'
    end

    resources :send_addresses
    resources :cart_items
    delete 'cart_items' => 'cart_items#reset'
  end

  namespace :admin do
    resources :genres, only: [:index,:new,:create,:edit,:update]
    resources :orders, only: [:index,:show]
    resources :items, only: [:index, :new, :create, :show, :edit, :update]
  end

  devise_for :admins, :skip =>[:registrations, :passwords], controllers: {
    sessions: 'admin/sessions',
  }

  devise_for :customers, controllers: {
    sessions: 'public/sessions',
    passwords: 'public/passwords',
    registrations: 'public/registrations'
  }

end
