Rails.application.routes.draw do
  
  resources :gifts, only: [:new, :create, :edit, :update, :index, :destroy] do
    collection { post :import }
  end
  resources :donors, only: [:new, :create, :edit, :update, :index, :destroy] do
    collection { post :import }
  end
  resources :activities, only: [:new, :create, :edit, :update, :index, :destroy] do
    collection { post :import }
  end
  
  # resources :gifts
  # resources :donors
  # resources :activities

  get    '/home',    to: 'static_pages#home'
  get    '/help',    to: 'static_pages#help'
  get    '/about',   to: 'static_pages#about'
  get    '/contact', to: 'static_pages#contact'
  get    '/reports', to: 'static_pages#reports'
  get    '/import-export', to: 'static_pages#import_export'
  
  get 'import-export/import'
  get 'import-export/inkind'
  get 'import-export/export'
  
  get    '/hyper-search/donors', to: 'hyper_search#donors'
  
  root 'static_pages#home'
end