require 'spec_helper'

describe "pets/index" do
  before(:each) do
    assign(:pets, [
      stub_model(Pet,
        :name => "Name",
        :species => "Species",
        :age => 1
      ),
      stub_model(Pet,
        :name => "Name",
        :species => "Species",
        :age => 1
      )
    ])
  end

  it "renders a list of pets" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Species".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
