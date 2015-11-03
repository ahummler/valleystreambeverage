Rails.application.routes.draw do
  get 'home/new'
  get 'home/about'

  get 'home/products'

  get 'home/specials'

  get 'home/contact'

  get 'home/order'

  get 'home/faq'
  get 'home/corporate'
  root 'home#about'
  devise_for :users
  
end
