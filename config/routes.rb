Rails.application.routes.draw do

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
    get "about" => "homes#about", as: "about"

    resources :customers, only: [:show, :edit, :update]
    patch 'customers/quit'

    resources :orders,only: [:index,:show,:new] do
      collection do
        post 'confirm'
        get 'complete'
      end
    post 'orders/confirm' => 'orders#create'
    end
  end

  namespace :admin do
    resources :genres, only: [:index,:new,:create,:edit,:update]
    resources :orders, only: [:index,:show]
    resources :items, only: [:index, :new, :create, :show, :edit, :update]
  end

end