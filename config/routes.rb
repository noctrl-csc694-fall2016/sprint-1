Rails.application.routes.draw do
  
<<<<<<< HEAD
  resources :gifts, only: [:new, :create, :edit, :update, :index, :destroy] do
    collection { post :import }
  end
  resources :donors, only: [:new, :create, :edit, :update, :index, :destroy] do
    collection { post :import }
  end
  resources :activities, only: [:new, :create, :edit, :update, :index, :destroy] do
    collection { post :import }
  end
=======
  resources :gifts, only: [:new, :create, :edit, :update, :index, :destroy]
  resources :donors, only: [:new, :create, :edit, :update, :index, :destroy]
  resources :activities, only: [:new, :create, :edit, :update, :index, :destroy]
>>>>>>> 865d522a842de472a42eac6a1c8956335c3d45cc

  get    '/home',    to: 'static_pages#home'
  get    '/help',    to: 'static_pages#help'
  get    '/about',   to: 'static_pages#about'
  get    '/contact', to: 'static_pages#contact'
  get    '/reports', to: 'static_pages#reports'
  get    '/import-export', to: 'static_pages#import_export'
  
  get 'import-export/import'
  get 'import-export/inkind'
  get 'import-export/export'
  
  root 'static_pages#home'
end