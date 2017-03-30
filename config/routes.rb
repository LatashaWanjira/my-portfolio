Rails.application.routes.draw do

  resources :contacts

  devise_for :users, path_names: { sign_in: 'login', sign_out: 'logout' }


  root :to => 'skills#index'
  resources :skills
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
