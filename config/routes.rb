Rails.application.routes.draw do
  namespace :public do
    get 'items/index'
    get 'items/show'


  end
 
  namespace :admin do
  end
 
end