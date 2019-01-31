Rails.application.routes.draw do
  get 'teachers/index'
  get 'teachers/show'
  get 'students/index'
  get 'students/show'
  resources :houses, only: [:index, :show]

  # get 'houses',     to: 'houses#index', as: 'houses'
  # get 'houses/:id', to: 'houses#show',  as: 'house'

  # GET / will load the index action of the houses controller.
  root to: 'houses#index'
end
