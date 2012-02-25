CollaborativeDevelopmentWeb::Application.routes.draw do
  root :to => 'home#index'
  get 'home/about', :to => 'home#about'
  get 'home/single', :to => 'home#single'
end
