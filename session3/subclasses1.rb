require_relative 'mymethods'
require_relative 'myclass'

class Newclass < Myclass
   def instance_method
     puts "I am overriding parent method"
     super
   end
 end
 
Mymethods.fancy_spacer(:text => "overriding a method")
Newclass.new.instance_method 
Mymethods.fancy_spacer(:text => "parent method")
Myclass.new.instance_method
Mymethods.fancy_spacer(:text => "END")