require_relative 'mymethods'

class Myclass
  include Mymethods
  extend Mymethods
  
  def instance_method
     puts "hi from INSTANCE method"
     show_inspect
   end
   
  def self.class_method
    puts "hi from CLASS method"
    show_inspect
  end
  
   def Myclass.class_method1
     puts "hi from another Class method"
     show_inspect
   
   end
end

Mymethods::fancy_spacer( :padding_char => "=", :text => "using instance method")
my_class= Myclass.new
my_class.instance_method
Mymethods::fancy_spacer(:text => "using another instance method")
my_class1= Myclass.new
my_class1.instance_method
Mymethods::spacer
Myclass.class_method
Mymethods::spacer
Myclass.class_method1
Mymethods::spacer
puts $LOAD_PATH





