#!/usr/bin/ruby
#part 7 - Dessert

class Dessert
  def initialize(name, calories)
    @name = name
    @calories = calories
  end

  def healthy?
    if @calories <= 200
      return true
    else
      return false
    end
  end

  def delicious?
    return true
  end
end

class JellyBean < Dessert
  def initialize(name, calories, flavor)
    @name = name
    @calories = calories
    @flavor = flavor
  end
  
  def delicious?
    if @flavor == "black licorice"
      return FALSE
    else
      return TRUE
    end
  end
end

a=JellyBean.new("red",100,"cherry")
p a.delicious?
p a.healthy?
b=Dessert.new("pie",190)
p b.delicious?
p b.healthy?

