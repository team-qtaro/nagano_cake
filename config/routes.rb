Rails.application.routes.draw do

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
