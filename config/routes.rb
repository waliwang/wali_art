Rails.application.routes.draw do
  devise_for :users 
  resources :illustrations
  root  "welcome#index"
end
