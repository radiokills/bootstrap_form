require 'spec_helper'

describe "cars/edit" do
  before(:each) do
    @car = assign(:car, stub_model(Car,
      :name => "MyString",
      :brand => "MyString",
      :year => 1,
      :engine_type => "MyText"
    ))
  end

  it "renders the edit car form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", car_path(@car), "post" do
      assert_select "input#car_name[name=?]", "car[name]"
      assert_select "input#car_brand[name=?]", "car[brand]"
      assert_select "input#car_year[name=?]", "car[year]"
      assert_select "textarea#car_engine_type[name=?]", "car[engine_type]"
    end
  end
end
