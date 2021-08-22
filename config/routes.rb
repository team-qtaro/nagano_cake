Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  scope module: :public do
    resources :orders,only: [:index,:show,:new,:create] do
      collection do
        get 'confirm'
        get 'complete'
      end
    end
  end

  scope module: :public do
    devise_for :customers
    root to: 'homes#top'
    get "about" => "homes#about" , as: "about"
  end

  namespace :admin do
    resources :genres,only: [:index,:new,:create,:edit,:update]
  end
end

