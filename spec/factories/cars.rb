# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :car do
    name "MyString"
    brand "MyString"
    engine_type nil
    is_working false
    description "MyText"
    kilometers 1.5
    last_registration "2013-06-02 13:29:25"
  end
end
