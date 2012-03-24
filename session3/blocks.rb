#!/usr/bin/env ruby
require_relative 'mymethods'

Mymethods::fancy_spacer(:text => "simple loop")
for i in 0..5 do
  puts i
end

Mymethods::fancy_spacer(:text => "block")
(0...5).each do |i|
  puts i
end

Mymethods::fancy_spacer(:text => "alternative block notation")
(0..5).each {|i| puts i}

Mymethods::fancy_spacer(:text => "other iterators")

p %W[H A L].collect{|letter| letter.succ}
p %W[H A L].collect(&:downcase)
p %W[H A L].inject(""){|l, letter| l + letter.succ}
p %W[H A L].find {|letter| letter == "A"}
p %W[H A L].find {|letter| letter == "x"}

Mymethods::fancy_spacer(:text => "blocks")

def use_block(arg, &block)
  yield(arg) if block_given?
end

class String
  def use_block
    yield(self) if block_given?
  end
end

p use_block("abc") {|a| a.upcase}
p "abc".use_block {|a| a.upcase}
p "ABC".use_block(&:reverse)

Mymethods::fancy_spacer(:text => "procs")

proc = Proc.new {|a| a.upcase}
p proc.call("abc")

def use_block(arg, &block)
  yield(arg) if block_given?
end

p "abc".use_block {|a| a.upcase}

Mymethods::fancy_spacer(:text => "lambdas")
l = lambda {|a| a.upcase}
p l.call("fred")

Mymethods::fancy_spacer(:text => "convert a block to a proc")
def our_proc(&proc)
    proc
end

double = our_proc { |n| n * 2}
p double.call(7)

# Mymethods::fancy_spacer(:text => "make a block with &")
# p (1..5).map(&:(*2))

Mymethods::fancy_spacer(:text => "difference between Proc and lambda")

def foo
  f = Proc.new { return "return from foo from inside proc" }
  f.call # control leaves foo here
  return "return from foo" 
end

def bar
  f = lambda { return "return from lambda" }
  f.call # control does not leave bar here
  return "return from bar" 
end

puts foo # prints "return from foo from inside proc" 
puts bar # prints "return from bar" 


Mymethods::fancy_spacer(:text => "END")