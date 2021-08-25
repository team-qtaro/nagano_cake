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
  end

end