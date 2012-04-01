require 'spec_helper'

describe User do
  it "should not allow setting password_digest by mass assignment" do
    lambda { User.new(:email => "fred@b.com", :password_digest => "aaa")}.should raise_error
  end
  it "should not have two users with same email" do 
     user = User.new(:email => "fred@b.com")
     user.password_digest = "aaaa"
     user.save
     user1 = User.new(:email => "fred@b.com")
     user1.password_digest = "aaaa"
     user1.should_not be_valid
 
   end
  it "should create users with unique email" do 
    user = User.new(:email => "fred@b.com")
    user.password_digest = "aaaa"
    user.save
    user1 = User.new(:email => "barney@b.com")
    user1.password_digest = "aaaa"
    user1.should be_valid
  end
end

