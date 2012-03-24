require 'spec_helper'

describe User do
  it "should have a unique email" do 
    User.new(:email => "fred@flintston.com").save
    User.new(:email => "fred@flintston.com").should_not be_valid
    User.new(:email => "barney@flintston.com").should be_valid   
  end

end

