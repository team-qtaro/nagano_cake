Rails.application.routes.draw do

  namespace :admin do
  end

  namespace :public do
    devise_for :customers
    root to: 'homes#top'
    get "about" => "homes#about" , as: "about"
  end
end
