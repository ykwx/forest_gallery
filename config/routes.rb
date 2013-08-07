TestApp::Application.routes.draw do
  
  resources :static_pages
  resources :photos
  root to: "static_pages#index"
  
end
