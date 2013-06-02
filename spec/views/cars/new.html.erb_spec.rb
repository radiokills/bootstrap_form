require 'spec_helper'

describe "cars/new" do
  before(:each) do
    assign(:car, stub_model(Car,
      :name => "MyString",
      :brand => "MyString",
      :engine_type => nil,
      :is_working => false,
      :description => "MyText",
      :kilometers => 1.5
    ).as_new_record)
  end

  it "renders new car form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", cars_path, "post" do
      assert_select "input#car_name[name=?]", "car[name]"
      assert_select "input#car_brand[name=?]", "car[brand]"
      assert_select "input#car_engine_type[name=?]", "car[engine_type]"
      assert_select "input#car_is_working[name=?]", "car[is_working]"
      assert_select "textarea#car_description[name=?]", "car[description]"
      assert_select "input#car_kilometers[name=?]", "car[kilometers]"
    end
  end
end
