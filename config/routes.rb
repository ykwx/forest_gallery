TestApp::Application.routes.draw do
  
  resources :static_pages
  resources :photos, only: [:index,:new,:create,:show]
  namespace :admin do
    resources :photos
    root to: "photos#index"
  end
  
  root to: "static_pages#index"
  
  
end
