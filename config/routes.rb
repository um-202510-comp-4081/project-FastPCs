# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users, path: '', path_names: {
    sign_in:  'login',
    sign_out: 'logout',
    sign_up:  'signup'
  }

  get 'up' => 'rails/health#show', as: :rails_health_check

  root to: redirect('/home')
  get 'home', to: 'pages#home', as: 'home'
  
  #BuildPC Routes
  get 'build', to: 'pages#build', as: 'build'
  resources :build_pcs, path: 'build', only: [:new, :create, :edit, :update]
  

  #Cart Routes
  get '/cart', to: 'cart#show', as: 'cart'
  delete '/cart', to: 'cart#destroy'
  
  #Cart Items Routes
  post '/cart_items', to: 'cart_items#create',  as: :cart_items
  delete '/cart_items/:id', to: 'cart_items#destroy', as: :cart_item

  #Accessories Routes
  get 'accessories', to: 'pages#accessories', as: 'accessories'
  get '/accessories/:accessory_name', to: 'accessories#show', as: 'accessory'

  get '/keyboards', to: 'accessories#keyboards', as: 'keyboards'
  get '/mouses', to: 'accessories#mouses', as: 'mouses'
  get '/chairs', to: 'accessories#chairs', as: 'chairs'
  get '/monitors', to: 'accessories#monitors', as: 'monitors'
  get '/headsets', to: 'accessories#headsets', as: 'headsets'
  get '/webcams', to: 'accessories#webcams', as: 'webcams'
  

  #ReadyToShipPC Routes
  get 'readytoship', to: 'pages#readytoship', as: 'readytoship'
  get 'readytoship/:id', to: 'pages#rtsshow', as: 'readytoships'

  
end
