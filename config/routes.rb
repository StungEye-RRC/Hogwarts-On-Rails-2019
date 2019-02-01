Rails.application.routes.draw do
  resources :houses, only: [:index, :show]
  resources :students, only: [:index, :show]
  resources :teachers, only: [:index, :show]
  resources :pages

  # Add a custom route for public access to our semi-static pages.
  get 'static/:permalink', to: 'pages#permalink', as: 'static'

  # GET / will load the index action of the houses controller.
  root to: 'houses#index'
end
