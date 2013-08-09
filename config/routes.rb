TestApp::Application.routes.draw do
  
  resources :static_pages
  resources :photos
  get "/holding", to: "static_pages#holding"
  root to: "static_pages#holding"
  
  
end
