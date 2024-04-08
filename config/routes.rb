Rails.application.routes.draw do
  get 'cover/show'
  resources :favorites
  resources :notification_times
  resources :stations
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   root "stations#index"
end
