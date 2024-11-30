Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  # Defines the root path route ("/")
  # root "posts#index"

  resources :lists, only: [ :index, :show, :new, :create ] do
    resources :bookmarks, only: [ :new, :create ]
    # allows for pathway /lists/:id/bookmarks/new
  end

  resources :bookmarks, only: [ :destroy ]

  # accessing all the tasks
  # get "/lists", to: "lists#index"

  # seeing details & name of given list
  # get "/lists/:id", to: "lists#show"

  # creating a new list
  # get "/lists/new", to: "lists#new"
  # POST "created new list"
  # post "/lists", to: "lists#create"
end
