Rails.application.routes.draw do
  root 'application#index'
  resources :levels
  resources :subjects
  resources :locations, only: [:show]
  resources :lessons 
  # only: [:new, :show, :edit]
  resources :tutors
  resources :students
  resources :sessions
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
