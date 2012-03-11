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
  
  # 
  # get 'stocks(/category/:category_id)(/priceLevel/:priceLevel)', :to => "stocks#index", :as => :stocks_sort_price
  # get 'stocks(/category/:category_id)/downloads',   :to => "stocks#index", :as => :stocks_sort_downloads, :noOfDownloads => "desc"
  # get 'stocks(/category/:category_id)/alphabet_az', :to => "stocks#index", :as => :stocks_sort_alphabet_az, :name => "asc"
  # get 'stocks(/category/:category_id)/alphabet_za', :to => "stocks#index", :as => :stocks_sort_alphabet_za, :name => "desc"
  # 
  
  resources :stocks do
    get :image
  end
end
