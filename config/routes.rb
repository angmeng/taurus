Rails.application.routes.draw do

  resources :licensees
  resources :branches

  resources :admins

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
