Rails.application.routes.draw do

  root :to => 'skills#index'

  resources :skills

  resources :projects

  resources :contacts

  devise_for :users, path_names: { sign_in: 'login', sign_out: 'logout' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
