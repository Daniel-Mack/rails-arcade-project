Rails.application.routes.draw do
  resources :players
  resources :games, only: [:index, :show]
  resources :characters, only: [:show]
  root 'static_pages#home'
  get '/login', to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  get '/logout',  to: 'sessions#destroy'
  get '/games/:id', to: 'character#show', as: 'play'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
