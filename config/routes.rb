Rails.application.routes.draw do
  devise_for :trainers
  root to: "home#index"
  resources :trainers
  patch "capture_path", to: 'pokemon#capture', as: 'capture'
  patch "damage", to: "pokemon#damage"
  get "/pokemon/new", to: "pokemon#new", as: "new_pokemon"
  post "/pokemon/new", to: "pokemon#create"
  get 'root', to: "home#index"
end
