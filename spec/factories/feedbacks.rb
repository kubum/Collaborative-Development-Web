# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :feedback do
    name "MyString"
    email "MyString"
    message "MyText"
    ip "MyString"
  end
end
