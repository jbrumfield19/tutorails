Rails.application.routes.draw do
  resources :subjects, only: [:show]
  resources :locations, only: [:show]
  resources :sessions, only: [:new, :show, :edit]
  resources :tutors
  resources :students
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
