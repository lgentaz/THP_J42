Rails.application.routes.draw do
  
  devise_for :users
  
  resources :email
  resources :tasks, except: [:show]

  root 'email#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
