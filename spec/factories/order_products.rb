# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :order_products do
    stock_id 1
    order_id 1
    quantity 1
    price ""
  end
end
