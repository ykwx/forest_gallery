TestApp::Application.routes.draw do
  
  devise_for :users
  resources :users
  resources :static_pages
  resources :photos, only: [:index,:new,:create,:show]
  namespace :admin do
    resources :photos
    resources :users
    root to: "photos#index"
  end
  
  get "live", to: "static_pages#index"
  
  # root to: "static_pages#index"
  root to: "static_pages#holding"
  
  
end
