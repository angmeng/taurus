Rails.application.routes.draw do

  get 'main_page/index'
  post 'login', to: "login#create"
  get 'login', to: "login#new"
  delete "logout", to: "login#destroy"
  resources :classrooms
  resources :teachers

  resources :licensees

  resources :branches

  resources :admins

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
