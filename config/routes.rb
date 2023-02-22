Rails.application.routes.draw do
  # get 'reviews/index'
  # get 'reviews/new'
  # get 'restaurants/index'
  # get 'restaurants/show'
  # get 'restaurants/new'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # resources :restaurants, only: [:index, :show, :new, :edit]
  # resources :restaurants
  resources :restaurants do
    resources :reviews, only: [:index, :new, :create]
  end
  resources :reviews, only: [:show, :edit, :update, :destroy]
end
