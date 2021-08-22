Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :orders,only: [:index,:show,:new] do
    collection do
      get 'confirm'
      get 'complete'
    end
    post 'orders/confirm' => 'orders#create'
  end

  scope module: :public do
    devise_for :customers
    root to: 'homes#top'
    get "about" => "homes#about", as: "about"
  end

  namespace :admin do
    resources :genres,only: [:index,:new,:create,:edit,:update]
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
 end