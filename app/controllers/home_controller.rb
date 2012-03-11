class HomeController < ApplicationController
  def index
    @promotions = Promotion.all
    @featured   = Stock.where(:featured => true).limit(3)
  end
  
  def single

  end

  def shop

  end

  def products

  end
end
