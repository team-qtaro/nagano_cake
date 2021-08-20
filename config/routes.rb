Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :orders,only: [:index,:show,:new] do
    collection do
  get 'confirm'
  get 'complete'
    end
  end
  post 'orders/confirm' => 'orders#create'
end
