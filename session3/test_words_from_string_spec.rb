#---
# Excerpted from "Programming Ruby 1.9",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
require_relative 'words_from_string'

describe "test words from string" do
  
  it "should test empty string" do
    words_from_string("").should == words_from_string("    ")
  end

  it "should test single word" do
    words_from_string("cat").should == ["cat"]
    words_from_string("   cat   ").should == ["cat"]
  end  
  
  it "test many words" do
    words_from_string("the cat sat on the mat").sort.should == ["the", "cat", "sat", "on", "mat", "the"].sort
  end
  
  it "should ignore punctuation" do
    
    words_from_string("<the!> cat's, -mat-").should == ["the", "cat's", "mat"]
  end
end

# class TestWordsFromString < Test::Unit::TestCase
#   def test_empty_string
#     assert_equal([], words_from_string(""))
#     assert_equal([], words_from_string("     "))
#   end  
#   def test_single_word
#     assert_equal(["cat"], words_from_string("cat"))
#     assert_equal(["cat"], words_from_string("  cat   "))
#   end 
#   def test_many_words 
#     assert_equal(["the", "cat", "sat", "on", "the", "mat"], 
#          words_from_string("the cat sat on the mat"))
#   end
#   def test_ignores_punctuation
#     assert_equal(["the", "cat's", "mat"], 
#          words_from_string("<the!> cat's, -mat-"))
#   end
# end
# 
