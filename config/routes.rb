Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get "restaurants", to: "restaurants#index"
  # get "restaurants/:restaurant_id/reviews", to: "reviews#index"

  # get "restaurants/new", to: "restaurants#new", as: :new
  # get "restaurants/:id", to: "restaurants#show", as: :restaurant

  # post "restaurants", to: "tasks#create"

  resources :restaurants, only: [:index, :show, :new, :create] do
    resources :reviews, only: [ :new, :create ]
  end

  # get "restaurants/:restaurant_id",
end

