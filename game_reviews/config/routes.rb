Rails.application.routes.draw do
  resources :reviews
  # resources :users
  resources :games, only: [:index, :show, :update, :destroy] 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

end
