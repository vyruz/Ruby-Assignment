#!/usr/bin/ruby
#part 8 - attr history

class Class
  def attr_accessor_with_history(attrName)
    attr_name = attrName.to_s
    attr_reader attr_name
    attr_writer attr_name
    attr_reader attr_name + "_history"
    class_eval %Q{  
      def #{attr_name}=(attr_name)  
        @#{attr_name} = attr_name                      
        unless @#{attr_name + "_history"}  
          @#{attr_name + "_history"} = []  
          @#{attr_name + "_history"} << nil  
        end                      
        @#{attr_name + "_history"} << attr_name                      
      end
    }
  end
end

class Foo
 attr_accessor_with_history :bar
end

f=Foo.new
f.bar = 1 
f.bar = 2
puts f.bar_history.to_s

f=Foo.new
f.bar = 100
puts f.bar_history.to_s
