require 'spec_helper'

describe "cars/show" do
  before(:each) do
    @car = assign(:car, stub_model(Car,
      :name => "Name",
      :brand => "Brand",
      :engine_type => nil,
      :is_working => false,
      :description => "MyText",
      :kilometers => 1.5
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Brand/)
    rendered.should match(//)
    rendered.should match(/false/)
    rendered.should match(/MyText/)
    rendered.should match(/1.5/)
  end
end
