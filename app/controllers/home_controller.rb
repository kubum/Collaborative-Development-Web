class HomeController < ApplicationController
  def index
    @promotions = Promotion.all
    @featured   = Stock.where(:featured => true).limit(3)
  end

  def payment

  end

  def checkout

  end
end