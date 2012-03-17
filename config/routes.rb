CollaborativeDevelopmentWeb::Application.routes.draw do
  devise_for :customers, :controllers => { :sessions => "sessions" }

  ActiveAdmin.routes(self)

  devise_for :web_administrators, ActiveAdmin::Devise.config

  root :to => 'home#index'
  
  get  'about', :to => 'about#index', :as => :about
  post 'feedback_send', :to => 'about#feedback_send'
  
  get 'home/single', :to => 'home#single'
  get 'home/shop', :to => 'home#shop'
  get 'home/products', :to => 'home#products'
  get 'home/registration', :to => 'home#registration'
  
  get 'stocks(/promotion/:featured)(/category/:category_id)(/sort/:sort)(/order/:order)', :to => "stocks#index", :as => :stocks_sort

  resources :promotions, :only => [:image] do
    get :image
  end
  
  get 'stocks/search', :to => 'stocks#search'
  resources :stocks, :only => [:index, :show] do
    get :image
  end
  
  resources :cart_products, :only => [:create]
end
