Rails.application.routes.draw do
 resources :customers, except: [:new, :create, :destory]
  get 'customers/confirm' => "customers#confirm"
  get 'customers/quit'    => "customers#quit"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
