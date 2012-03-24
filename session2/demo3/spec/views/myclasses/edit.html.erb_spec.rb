require 'spec_helper'

describe "myclasses/edit" do
  before(:each) do
    @myclass = assign(:myclass, stub_model(Myclass))
  end

  it "renders the edit myclass form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => myclasses_path(@myclass), :method => "post" do
    end
  end
end
