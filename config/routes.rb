Rails.application.routes.draw do
  root 'application#hello'
  resources :gifts
  resources :donors
  resources :activities

end