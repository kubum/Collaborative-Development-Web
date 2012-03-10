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
  
  get 'stocks(/priceLevel/:priceLevel)', :to => "stocks#index", :as => :stocks_sort_price
  get 'stocks/downloads',   :to => "stocks#index", :as => :stocks_sort_downloads, :noOfDownloads => "desc"
  get 'stocks/alphabet_az', :to => "stocks#index", :as => :stocks_sort_alphabet_az, :name => "asc"
  get 'stocks/alphabet_za', :to => "stocks#index", :as => :stocks_sort_alphabet_za, :name => "desc"
  
  resources :stocks do
    get :image
  end
end
