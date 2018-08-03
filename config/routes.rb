Rails.application.routes.draw do
  resources :players
  resources :games, only: [:index, :show]
  resources :characters, only: [:show, :new]
  root 'static_pages#home'
  get '/login', to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  get '/games/:id', to: 'character#show', as: 'play'
  post '/characters', to: 'characters#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

# Rails.application.routes.draw do
#   resources :players
#   resources :games, only: [:index, :show] do
#     resources :characters, only: [:show, :new]
#   end
#   # resources :characters, only: [:show, :new]
#   root 'static_pages#home'
#   get '/login', to: 'sessions#new'
#   post   '/login',   to: 'sessions#create'
#   delete '/logout',  to: 'sessions#destroy'
#   get '/games/:id', to: 'character#show', as: 'play'
#   post '/characters', to: 'characters#create'
#   # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
# end
