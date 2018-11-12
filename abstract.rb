#Only Abstract methods have to be implemented by the subclass.
# An Abstract class can have normal methods with implementations.
# Abstract class can also have class variables beside Events, Delegates, Properties and Methods.

class Shape2D
  def initialize
    raise NotImplementedError, "#{self.class.name} is an abstract class."
  end

  def area
    raise NotImplementedError, "#{self.class.name}#area is an abstract method."
  end
end

class Square < Shape2D
  def initialize(length)
    @length = length
  end

  def area
    puts @length**2
  end
end

Square.new(10).area
