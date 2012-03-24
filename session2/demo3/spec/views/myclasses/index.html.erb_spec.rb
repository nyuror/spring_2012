require 'spec_helper'

describe "myclasses/index" do
  before(:each) do
    assign(:myclasses, [
      stub_model(Myclass),
      stub_model(Myclass)
    ])
  end

  it "renders a list of myclasses" do
    render
  end
end
