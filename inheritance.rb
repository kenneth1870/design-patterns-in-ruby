class Cat
  def initialize
    @name = 'Garfield'
  end

  def sound
    puts 'Meow'
  end
end

class Tiger < Cat
  def initialize
    @name = 'Diego'
  end

  def sound
    puts 'Roar'
    # super() puts Cat's sound
  end
end

cat = Cat.new

cat.sound

tiger = Tiger.new

tiger.sound
