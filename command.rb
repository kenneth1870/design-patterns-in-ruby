# Encapsulate a request as an object, thereby letting you parameterize clients
# with different requests, queue or log requests, and support undoable operations

class Turn
  def initialize
    @commands = []
  end

  def run_command(command)
    command.execute
    @commands << command
  end

  def undo_command
    @commands.pop.unexecute
  end
end

class Hero
  attr_accessor :money, :health

  def initialize
    @money = 0
    @health = 100
  end
end

class GetMoneyCommand
  def initialize(hero)
    @hero = hero
  end

  def execute
    @hero.money += 10
  end

  def unexecute
    @hero.money -= 10
  end
end

class HealCommand
  def initialize(hero)
    @hero = hero
  end

  def execute
    @hero.health += 10
  end

  def unexecute
    @hero.health -= 10
  end
end

# Usage
hero = Hero.new
get_money = GetMoneyCommand.new hero
heal = HealCommand.new hero
turn = Turn.new
turn.run_command(heal)
puts hero.health

turn.run_command(get_money)
puts hero.money

turn.undo_command
puts hero.money
