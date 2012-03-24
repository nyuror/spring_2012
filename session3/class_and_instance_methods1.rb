#!/usr/bin/env ruby
module Mymethods
  def show_inspect
    puts "object: #{self.inspect} object_id: #{self.object_id}"
  end
  
  def self.spacer(space_char = "=")
    puts space_char * 30
  end
  
end


class Myclass
  include Mymethods
  extend  Mymethods
  def instance_method
    puts "hi from an INSTANCE method"
    show_inspect
  end
  
  def self.class_method
      puts "hi from a CLASS method"
      show_inspect
    end
    
    def Myclass.another_class_method
      puts "hi from another CLASS method"
      show_inspect
    end
  
end

Mymethods::spacer
my_class = Myclass.new
my_class.instance_method
Mymethods::spacer
my_class = Myclass.new
my_class.instance_method
Mymethods::spacer
Myclass.class_method
Mymethods::spacer
Myclass.another_class_method
Mymethods::spacer


