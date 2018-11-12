#Every single Method declared in an Interface will have to be implemented in the subclass. 

class Foo
  def foo
    raise 'This is not implemented!'
  end
end
class Bar < Foo
  def foo
    puts 'BarFoo'
  end

  def bar
    puts 'Bar'
  end
end

bar = Bar.new
bar.foo
bar.bar

