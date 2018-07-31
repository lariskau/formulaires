Rails.application.routes.draw do
  root 'pages#index'
  get 'new' => 'pages#new'
  post 'new' => 'pages#create'
  patch 'new' => 'pages#update_name'
  get 'new/:id' => 'pages#profil'
  patch 'new/:id' => 'pages#update_bio'
  delete 'new/:id' => 'pages#destroy'
  get 'error' => 'pages#error'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
