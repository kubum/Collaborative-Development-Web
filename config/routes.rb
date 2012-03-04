CollaborativeDevelopmentWeb::Application.routes.draw do
  ActiveAdmin.routes(self)

  devise_for :web_administrators, ActiveAdmin::Devise.config

  root :to => 'home#index'
  
  # About
  get  'about', :to => 'about#index', :as => :about
  post 'feedback_send', :to => 'about#feedback_send'
  
  get 'home/single', :to => 'home#single'
  get 'home/shop', :to => 'home#shop'
  get 'home/products', :to => 'home#products'
end
