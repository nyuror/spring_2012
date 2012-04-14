require 'spec_helper'

describe Product do
  before(:each) do
    @product = Product.new(name: "dog_collar", stock: 0)
  end
   
  it "must have a name" do
    @product.name = nil
    @product.should_not be_valid
  end
  
  it "should never have negative stock" do
    @product.stock = -1
    @product.should_not be_valid
  end

  it "can have zero stock" do
    @product.should be_valid
    
  end

end

