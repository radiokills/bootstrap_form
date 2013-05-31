require 'spec_helper'

describe "cars/show" do
  before(:each) do
    @car = assign(:car, stub_model(Car,
      :name => "Name",
      :brand => "Brand",
      :year => 1,
      :engine_type => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Brand/)
    rendered.should match(/1/)
    rendered.should match(/MyText/)
  end
end
