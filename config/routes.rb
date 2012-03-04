CollaborativeDevelopmentWeb::Application.routes.draw do
  root :to => 'home#index'
  get 'about', :to => 'home#about', :as => :about
  post 'feedback_send', :to => 'home#feedback_send'
  
  get 'home/single', :to => 'home#single'
  get 'home/shop', :to => 'home#shop'
  get 'home/products', :to => 'home#products'
end
