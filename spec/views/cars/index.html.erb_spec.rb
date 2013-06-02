require 'spec_helper'

describe "cars/index" do
  before(:each) do
    assign(:cars, [
      stub_model(Car,
        :name => "Name",
        :brand => "Brand",
        :engine_type => nil,
        :is_working => false,
        :description => "MyText",
        :kilometers => 1.5
      ),
      stub_model(Car,
        :name => "Name",
        :brand => "Brand",
        :engine_type => nil,
        :is_working => false,
        :description => "MyText",
        :kilometers => 1.5
      )
    ])
  end

  it "renders a list of cars" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Brand".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
  end
end
