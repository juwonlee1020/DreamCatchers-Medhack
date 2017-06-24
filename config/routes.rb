Rails.application.routes.draw do
  devise_for :users
  get 'pages/home'
  get 'pages/prioritization'
  get 'images/check'
  root 'pages#demo'
  get 'pages/demo'
  get 'pages/documentation'
  get 'images/mismatch'
  get 'images/edit_mismatch'
  get 'pages/maps'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
=begin
  devise_scope :user do
   root to: "devise/sessions#new"
=end
  

  resources :images
end
