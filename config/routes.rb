Rails.application.routes.draw do
  resources :orgs
  get 'pages/home'
  devise_for :users
  resources :equipment
  root 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
