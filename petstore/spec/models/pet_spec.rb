require 'spec_helper'

describe Pet do

  it "should have a name" do
    Pet.new(:name => "fido").should be_valid
    Pet.new.should_not be_valid   
  end
  
  it "should have a unique name" do 
    Pet.new(:name => "fido").save
    Pet.new(:name => "fido").should_not be_valid
    Pet.new(:name => "rover").should be_valid   
  end
  
end

