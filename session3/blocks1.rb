#!/usr/bin/env ruby
require_relative 'mymethods'
# Mymethods::fancy_spacer(:text => "simple loop")
# for i in 0..5 do
#   puts i
# end
# 
# Mymethods::fancy_spacer(:text => "iterator")
# # (0..5).each do |i|
# #   puts i
# # end
# # 
#  (0..5).each {|i| puts i }
# Mymethods::fancy_spacer(:text => "iterators")
# 
# p %W[H A L].collect {|letter| letter.succ}
# p %W[H A L].collect(&:succ)
# p %W[H A L].detect {|letter| letter == "X"}
# p %W[H A L].inject(""){|l,letter| l + letter}
Mymethods::fancy_spacer(:text => "blocks")

def use_block(arg,&block)
  yield(arg)
end

p use_block("abc") {|a| a.upcase}

class String
  def use_block
    yield(self) if block_given?
  end
end

p "cat".use_block {|s| s.upcase}
  
  
  
  
  
  
