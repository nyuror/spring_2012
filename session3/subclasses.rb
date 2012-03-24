#!/usr/bin/env ruby

require_relative 'mymethods'
require_relative 'myclass'

class Newclass <  Myclass
  def instance_method
    puts "I am overriding parent method"
#    super
  end
  
end

Mymethods::spacer

Newclass.new.instance_method

Mymethods::spacer

