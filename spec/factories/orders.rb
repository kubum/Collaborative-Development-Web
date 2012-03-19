# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :order do
    customer_id 1
    address_id 1
    status "MyString"
  end
end
