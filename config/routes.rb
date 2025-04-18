# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users, path: '', path_names: {
    sign_in:  'login',
    sign_out: 'logout',
    sign_up:  'signup'
  }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get 'up' => 'rails/health#show', as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  root to: redirect('/home')

  get 'home', to: 'pages#home', as: 'home'

  #Cart Routes
  get '/cart', to: 'cart#show', as: 'cart'
  
  #Cart Items Routes
  post '/cart_items', to: 'cart_items#create',  as: :cart_items
  
  get 'build', to: 'pages#build', as: 'build'

  #Accessories Routes
  get 'accessories', to: 'pages#accessories', as: 'accessories'
  get '/accessories/:accessory_name', to: 'accessories#show', as: 'accessory'


  get 'readytoship', to: 'pages#readytoship', as: 'readytoship'
end
