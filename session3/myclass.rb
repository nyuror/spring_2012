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