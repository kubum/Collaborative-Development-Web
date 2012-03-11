CollaborativeDevelopmentWeb::Application.routes.draw do
  ActiveAdmin.routes(self)

  devise_for :web_administrators, ActiveAdmin::Devise.config

  root :to => 'home#index'
  
  get  'about', :to => 'about#index', :as => :about
  post 'feedback_send', :to => 'about#feedback_send'
  
  get 'home/single', :to => 'home#single'
  get 'home/shop', :to => 'home#shop'
  get 'home/products', :to => 'home#products'
  
  get 'stocks(/promotion/:featured)(/category/:category_id)(/sort/:sort)(/order/:order)', :to => "stocks#index", :as => :stocks_sort

  resources :promotions, :only => [:image] do
    get :image
  end
  
  resources :stocks do
    get :image
  end
end
