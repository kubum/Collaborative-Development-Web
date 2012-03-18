class CartsController < ApplicationController
  before_filter :authenticate_customer!, :only => [:delivery]
  
  def index
    
  end
  
  def delivery
  
  end
end