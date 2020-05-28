Rails.application.routes.draw do
  
  devise_for :users
  
  resources :emails
  resources :tasks, except: [:show]

  root 'emails#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
