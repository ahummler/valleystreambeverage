Rails.application.routes.draw do
  post 'corporate/email', to: 'corporates#email'

  resources :corporates 
  post 'request/email', to: 'requests#email'
  resources :requests
  get 'home/new'
  get 'home/keg'
  get 'home/about'
 
  post 'home/email'
  get 'home/products'

  get 'home/specials'

  get 'home/contact'

  get 'home/order'

  get 'home/FAQ'
  # get 'home/corporate', to: 'home#corp', as: 'corp'
  # post 'home/corporate', to: 'home#corp_create', as: 'corp_create'
  root 'home#home'
  devise_for :users

  resources :products do
  collection { post :import}
  end

  
end
