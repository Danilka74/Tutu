Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :trains
  resources :stations
  resources :routes
  
  get 'trains/index'

  root 'trains#index'
end
