CollaborativeDevelopmentWeb::Application.routes.draw do
  # Active Admin
  ActiveAdmin.routes(self)
  devise_for :web_administrators, ActiveAdmin::Devise.config
  
  # Customers
  devise_for :customers, :controllers => { :sessions => "sessions" }

  # Default page
  root :to => 'home#index'
  
  # About
  get  'about', :to => 'about#index', :as => :about
  post 'feedback_send', :to => 'about#feedback_send'
  
  # Pages
  get 'home/shop', :to => 'home#shop'
  get 'home/delivery_type', :to => 'home#delivery_type'
  get 'home/payment', :to => 'home#payment'
  get 'home/checkout', :to => 'home#checkout'
  get 'home/order_history', :to => 'home#order_history'

  # Stock
  get 'stocks(/promotion/:featured)(/category/:category_id)(/sort/:sort)(/order/:order)', :to => "stocks#index", :as => :stocks_sort
  # Stock search
  get 'stocks/search', :to => 'stocks#search'
  # Stock REST
  resources :stocks, :only => [:index, :show] do
    get :image
  end

  # Images for promotions
  resources :promotions, :only => [:image] do
    get :image
  end
  
  # Adding products to the cart
  resources :cart_products, :only => [:create, :destroy, :update]
  
  # Cart
  get 'carts/delivery', :to => "carts#delivery", :as => :carts_delivery
  resources :carts, :only => [:index]  
end
