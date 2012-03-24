#!/usr/bin/env ruby

def spacer(space_char = "=")
  puts space_char * 30
end


class Myclass
  
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

private

  def show_inspect
    puts "object: #{self.inspect} object_id: #{self.object_id}"
  end
  
  def self.show_inspect
    puts "object: #{self.inspect} object_id: #{self.object_id}"
  end  
  
end

spacer
my_class = Myclass.new
my_class.instance_method
spacer
my_class = Myclass.new
my_class.instance_method
spacer
Myclass.class_method
spacer
Myclass.another_class_method
spacer
