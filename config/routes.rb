Rails.application.routes.draw do
  get 'home/about'

  get 'home/products'

  get 'home/specials'

  get 'home/contact'

  get 'home/order'

  get 'home/FAQ'
   
  root 'home#index'
  devise_for :users
  
end
