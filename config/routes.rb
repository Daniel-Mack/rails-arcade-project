Rails.application.routes.draw do
  resources :players
  resources :games
  resources :characters
  root 'sessions#new'
  get '/signin', to: 'sessions#new', as: 'signin'
  # get '/players/:id' to: 'players#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
