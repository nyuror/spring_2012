module Mymethods
  def show_inspect
    puts "object: #{self.inspect} object_id: #{self.object_id}"
  end
  
  def self.spacer(space_char = "*")
    puts space_char * 30
  end
  
  def self.fancy_spacer(opts={})
    opts = {:padding_char => "*", :text => "test", :padding_size => 50}.merge!(opts)
    padding = (opts[:padding_size] - opts[:text].size) / 2 - 1
    padding_fill = opts[:padding_char] * padding
    puts  "#{padding_fill} #{opts[:text]} #{padding_fill}"
  end
  
end
