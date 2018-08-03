Rails.application.routes.draw do
  resources :players
  resources :games, only: [:index, :show, :new, :create] do
    resources :characters, only: [:create, :show, :new]
  end
  root 'static_pages#home'
  get '/games/:id', to: 'character#show', as: 'play'
  get '/login', to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  post '/characters', to: 'characters#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
