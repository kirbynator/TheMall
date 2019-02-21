Rails.application.routes.draw do
  
 
  root "stores#index"
  resources :admins
 resources :stores do
  resources :items
 end
end
