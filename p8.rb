#!/usr/bin/ruby
#part 8 - attr history

class Class
  def attr_accessor_with_history(attrName)
    attr_name = attrName.to_s #make sure it's a string
    attr_reader attr_name # create the attribute's getter
    attr_reader attr_name + "_history"
    class_eval %Q{ #exaluates block, %Q allows for block of multiple lines
      def #{attr_name}=(value)  
        @#{attr_name} = value

        unless @#{attr_name + "_history"} #if not 
          @#{attr_name + "_history"} = []  
          @#{attr_name + "_history"} << nil  
        end                      
        @#{attr_name + "_history"} << value                    
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
f.bar = "new f"
puts f.bar_history.to_s

#source 
#https://gist.github.com/feiskyer/1964749
