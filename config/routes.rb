# frozen_string_literal: true

Rails.application.routes.draw do
  resources :players
  resources :characters
  resources :games do
    resources :characters, only: %i[index create show new]
  end
  root 'static_pages#home'
  get '/games/:id', to: 'character#show', as: 'play'
  get '/login', to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  post '/characters', to: 'characters#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
