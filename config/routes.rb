Rails.application.routes.draw do
  resources :hops
  resources :malts
  resources :galts
  resources :gmalts
  resources :grains
  resources :recipes
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
