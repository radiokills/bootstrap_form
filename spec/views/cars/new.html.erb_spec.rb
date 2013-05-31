require 'spec_helper'

describe "cars/new" do
  before(:each) do
    assign(:car, stub_model(Car,
      :name => "MyString",
      :brand => "MyString",
      :year => 1,
      :engine_type => "MyText"
    ).as_new_record)
  end

  it "renders new car form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", cars_path, "post" do
      assert_select "input#car_name[name=?]", "car[name]"
      assert_select "input#car_brand[name=?]", "car[brand]"
      assert_select "input#car_year[name=?]", "car[year]"
      assert_select "textarea#car_engine_type[name=?]", "car[engine_type]"
    end
  end

  it "Is has form class" do
      render
      assert_select("form[class=?]", "form-horizontal")
    end
end
