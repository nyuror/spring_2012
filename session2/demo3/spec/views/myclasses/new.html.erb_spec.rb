require 'spec_helper'

describe "myclasses/new" do
  before(:each) do
    assign(:myclass, stub_model(Myclass).as_new_record)
  end

  it "renders new myclass form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => myclasses_path, :method => "post" do
    end
  end
end
