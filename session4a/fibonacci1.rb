#!/usr/bin/env ruby
require_relative "mymethods"

def fibonacci_sequence
  Enumerator.new do |generator|
    i1, i2 = 1, 1
    loop do   
      generator.yield i1
      i1, i2 = i2, i1+i2
    end
  end
end

Mymethods::fancy_spacer(:text => "enumerator")
p fibonacci_sequence.first(5)
e = fibonacci_sequence
(1..5).each {|a| print e.next, " "}

Mymethods::fancy_spacer(:text => "more enumerator", :nl => true)
fibonacci_sequence.first(5).each {|f| print f, " " }

Mymethods::fancy_spacer(:text => "yield in a method", :nl => true)
def fib_up_to(max) 
  i1, i2 = 1, 1
  while i1 <= max 
    yield i1
     i1, i2 = i2, i1+i2 
  end
end

fib_up_to(1000) {|f| print f, " " }

Mymethods::fancy_spacer(:text => "using lambda to pass a proc with enum", :nl => true)
p = lambda {|a| print a, " "}
e = %w[cat dog moose horsefly].to_enum
e.each{|z| p.call(z)}
 
Mymethods::fancy_spacer(:text => "using lambda to pass a proc no enum", :nl => true)
e = %w[cat dog moose horsefly]
e.each{|z| p.call(z)} 

Mymethods::fancy_spacer(:text => "end", :nl => true)