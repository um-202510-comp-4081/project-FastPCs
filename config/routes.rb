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
  get 'cart', to: 'pages#cart', as: 'cart'
  resources :build_pcs
  get 'build', to: 'pages#build', as: 'build'
  get 'accessories', to: 'pages#accessories', as: 'accessories'
  get 'readytoship', to: 'pages#readytoship', as: 'readytoship'
  
end
