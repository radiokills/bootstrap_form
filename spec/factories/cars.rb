# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :car do
    name "MyString"
    brand "MyString"
    year 1
    last_service "2013-05-31 19:59:08"
    engine_type "MyText"
  end
end
