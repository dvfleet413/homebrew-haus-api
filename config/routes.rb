Rails.application.routes.draw do
  
  post '/login', to: "sessions#create"
  post '/logout', to: "sessions#destroy"
  get '/get_current_user', to: "sessions#get_current_user"
  post '/signup', to: "users#create"
  resources :users, only: [:create, :destroy] do
    resources :favorites, only: [:create, :destroy]
  end
  resources :recipes, only: [:index, :create, :destroy]
  resources :grains, only: [:index]
  resources :hops, only: [:index]
  resources :malts, only: [:index]
  resources :yeasts, only: [:index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
