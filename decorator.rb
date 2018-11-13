# Attach additional responsibilities to an object dynamically. Decorators
# provide a flexible alternative to subclassing for extending functionality
class Burger
  def cost
    50
  end
end

class BurgerWithCheese < Burger
  def cost
    60
  end
end

class LargeBurger
  def initialize(burger)
    @burger = burger
  end

  def cost
    @burger.cost + 15
  end
end

burger = Burger.new
large_burger = LargeBurger.new(burger)
extra_large_burger = LargeBurger.new(large_burger)
