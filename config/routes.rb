Rails.application.routes.draw do

  scope module: :public do
    root to: 'homes#top'
    get "about" => "homes#about", as: "about"

    get 'customers/mypage' => 'customers#show'
    get 'customers/edit' => 'customers#edit'
    patch 'customers' => 'customers#update'
    get 'customers/quit' => 'customers#confirm'
    patch 'customers/quit' => 'customers#quit'

    resources :orders,only: [:index,:show,:new,:create] do
      collection do
        post 'confirm'
        get 'complete'
      end
    end

    resources :send_addresses
    resources :cart_items
    delete 'cart_items' => 'cart_items#reset'

    resources :items
  end

  namespace :admin do
    resources :genres, only: [:index,:new,:create,:edit,:update]
    resources :orders, only: [:index,:show,:update]
    resources :order_details, only: [:update]
    resources :items, only: [:index, :new, :create, :show, :edit, :resources, :update]
    get 'customers' => 'customers#index'
    get 'customers/:id' => 'customers#show', as: "customer_show"
    get 'customers/:id/edit' => 'customers#edit', as: "customer_edit"
    patch 'customers/:id' => 'customers#update', as: "customer_update"
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
