describe TestClass do
  it "should return the string appended to '5'" do
    TestClass.new.add_to_5("7").should == "57"
  end
end