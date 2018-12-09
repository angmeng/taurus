Rails.application.routes.draw do

  resources :photo_galleries
  resources :bulletins
  get 'main_page/index'
  post 'login', to: "login#create"
  get 'login', to: "login#new"
  delete "logout", to: "login#destroy"
  post 'admin/login', to: "login#create_admin_session"
  get 'admin/login', to: "login#admin_login"
  delete "admin/logout", to: "login#destroy_admin_session"
  post 'teacher/login', to: "login#create_teacher_session"
  get 'teacher/login', to: "login#teacher_login"
  delete "teacher/logout", to: "login#destroy_teacher_session"
  post 'parent/login', to: "login#create_parent_session"
  get 'parent/login', to: "login#parent_login"
  delete "parent/logout", to: "login#destroy_parent_session"
  
  resources :classrooms
  resources :teachers

  resources :licensees

  resources :branches

  resources :admins

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
