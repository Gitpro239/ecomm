Rails.application.routes.draw do
  # namespace :admin do
  #   resources :orders
  #   resources :stocks
  #   resources :products
  #   resources :categories
  # end

  namespace :admin do
    resources :orders
    resources :products do
      resources :stocks
    end
      resources :categories
  end

  devise_for :admins

  root "home#index"

  authenticated :admin_user do
    root to: "admin#index", as: :admin_root
  end

  resources :categories, only: [ :show ]
  resources :products, only: [ :show ]

  get "admin" => "admin#index"
  get "carts" => "carts#show"
  post "checkout" => "checkouts#create"
  get "success" => "checkouts#success"
  get "cancel" => "checkouts#cancel"
  post "webhooks" => "webhooks#stripe"
  # get "category" => "category#index"


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "up" => "rails/health#show", as: :rails_health_check
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # root "posts#index"
end
