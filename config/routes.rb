Rails.application.routes.draw do
  get 'doses/new'
  get 'doses/create'
  get 'doses/destroy'
  get 'cocktails/index'
  get 'cocktails/show'
  get 'cocktails/new'
  get 'cocktails/create'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root to: "cocktails#index"

  resources :cocktails, only: [:index, :show, :new, :create] do
    resources :doses, only: [:new, :create]
  end

  resources :doses, only: [:destroy]
end
