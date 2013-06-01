require 'spec_helper'
#Capybara.default_wait_time=10
describe "NewCarForm" do
  describe "GET /cars/new" do
    it "works!" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/cars/new'
      page.should have_content("New car")
    end

    it "Has name label" do
    	visit '/cars/new'	
    	page.should have_content("Name")
      page.should have_content("Engine type")
    end

    it "should give error", js: true do
      visit "/cars/new"
      page.should have_selector("[name=commit]")
      click_button "Create Car"
      page.should have_selector(".tooltip")
      

    end
    

  end
end
