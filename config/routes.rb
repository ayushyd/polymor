Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   root "users#index"

  resources :posts do
    resources :polycomments, only: [:new, :create]
  end

  resources :events do
    resources :polycomments, only: [:new, :create]
  end

  resources :forums do
    resources :polycomments, only: [:new, :create]
  end

  resources :polycomments, only: [:index, :show, :edit, :update, :destroy]

  resources :users
end

