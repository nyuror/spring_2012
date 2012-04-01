require 'spec_helper'

describe  "POST tasks" do
  it "displays error message when creating a pet without a name" do
    visit pets_path
    click_link "New Pet"
    fill_in "Species", :with => "dog"
    click_button "Create Pet"
    page.should have_content("Name can't be blank")
  end

  it "displays error message when creating a pet with a name that already exists" do
    visit new_pet_path
    fill_in "Name", :with => "buster"
    click_button "Create Pet"
    visit new_pet_path
    fill_in "Name", :with => "buster"
    click_button "Create Pet"
    page.should have_content("Name has already been taken")
  end


  it "displays success message when successfully creating a pet" do
    visit pets_path
    click_link "New Pet"
    fill_in "Name", :with => "Fred"
    click_button "Create Pet"
    page.should have_content("Pet was successfully created.")
  end
  
  describe "test javascript", :js => true do
      it "supports js" do
        visit pets_path
        find("#testjs").click
        page.should have_content("on")
        find("#testjs").click
        page.should have_content("off")
      end
    end
  
end