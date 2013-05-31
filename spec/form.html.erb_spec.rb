require 'spec_helper'

describe "NewCarForm", :type=>:feature do
  describe "GET /cars/new" do
    it "works!" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/cars/new'
      page.should have_content("New car")
    end

    it "Has name label" do
    	visit '/cars/new'	
    	page.should have_content("Name")
    end

    

  end
end
