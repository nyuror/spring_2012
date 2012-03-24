require 'spec_helper'

describe "pets/new" do
  before(:each) do
    assign(:pet, stub_model(Pet,
      :name => "MyString",
      :species => "MyString",
      :age => 1
    ).as_new_record)
  end

  it "renders new pet form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => pets_path, :method => "post" do
      assert_select "input#pet_name", :name => "pet[name]"
      assert_select "input#pet_species", :name => "pet[species]"
      assert_select "input#pet_age", :name => "pet[age]"
    end
  end
end
