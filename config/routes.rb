Rails.application.routes.draw do
  devise_for :users 

 

  namespace :admin do
    resources :illustrations
    resources :users
    root  "welcome#index"
  end

  resources :illustrations, only: [:index, :show, :create] 
  root  "welcome#index"
  resources :curriculumvitaes, only: [:show]
end
