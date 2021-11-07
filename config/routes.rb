Rails.application.routes.draw do
  devise_for :users 

 

  namespace :admin, path: "djejwmt" do
    resources :illustrations
    resources :users
    root  "welcome#index"
  end

  resources :illustrations, only: [:index, :show, :create, :update] 
  root  "welcome#index"
  resources :curriculumvitaes, only: [:show]


  resources :contacts, only: [:new, :create]
  root  "welcome#index"
end
