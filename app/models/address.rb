class Address < ActiveRecord::Base
  validates :address, :city, :postcode, :mobile_number, :email, :presence => true
  validates :mobile_number, :numericality => true
  
  attr_accessor :customer
  
  before_validation do
    if customer.nil?
      errors.add(:customer, "email is not set")
    else
      write_attribute(:email, customer.email)
    end
    
    write_attribute(:phone_number, mobile_number)
  end
end
