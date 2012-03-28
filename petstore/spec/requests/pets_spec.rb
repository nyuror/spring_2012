require 'spec_helper'

describe "Pets" do
  describe "GET /pets" do
    it "works! (now write some real specs)" do
      get pets_path
      response.status.should be(200)
      response.body.should include(%Q[<a href="/pets/new">New Pet</a>])
    end
  end
end

describe "POST /tasks" do
  it "creates a pet", :js => true do
    visit pets_path
    click_link "New Pet"  
    fill_in "Name", :with => "Spot"
    click_button "Create Pet"
    # save_and_open_page
    # page.should have_content("Name can't be blank")
    page.should have_content("Pet was successfully created.")
  end
end

describe "testjs", :js => true do
  it "supports js" do
    visit pets_path
    click_link "test js"
    page.should have_content("js works")
  end
end