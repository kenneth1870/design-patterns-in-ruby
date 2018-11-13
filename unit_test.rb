require "minitest/autorun"

class Shape
  def getArea
    raise 'This is not Implemented'
  end
end

class Circle < Shape

   def initialize(radio) 
    @pi = 3.14
    @radio = radio
   end

   def getArea()
      @pi * @radio ** 2
   end
end


circle = Circle.new(2)

puts circle.getArea

class Tester < Minitest::Test

  def setup
    @circle = Circle.new(2)
  end

  def test_sample
    assert_equal 12.56, @circle.getArea
  end
end