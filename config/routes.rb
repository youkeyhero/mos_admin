Rails.application.routes.draw do
  resources :performances
  resources :businesses
  #devise_for :users

  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }

  get 'home/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
