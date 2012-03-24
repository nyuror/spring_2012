require 'spec_helper'

describe "myclasses/show" do
  before(:each) do
    @myclass = assign(:myclass, stub_model(Myclass))
  end

  it "renders attributes in <p>" do
    render
  end
end
