# frozen_string_literal: true

Rails.application.routes.draw do
  resources :characters
  resources :players
  resources :characters, only: %i[index destroy update edit]

  resources :games do
    resources :characters, only: %i[create show new]
  end
  root 'static_pages#home'
  get '/games/:id', to: 'character#show', as: 'play'
  get '/login', to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
