require 'spec_helper'

describe "Test all db tables" do
  it "test db" do
    lambda { 
      Account.all
      Address.all
      Customer.all
      Offer.all
      Order.all
      Review.all
      Staff.all
      Stock.all
      Wholesaler.all
    }.should_not raise_error    
  end
end