Rails.application.routes.draw do
  resources :players
  resources :games
  resources :characters
  root 'session#welcome'
  get '/login', to: 'session#new', as: 'login'
  post '/login', to: 'players#show'
  post '/games/:id', to: 'games#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
