Rails.application.routes.draw do
  resources :subjects
  resources :locations
  resources :sessions
  resources :tutors
  resources :students
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
