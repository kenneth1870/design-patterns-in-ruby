
# The Builder pattern encapsulates the construction logic of complex objects
# in its own class. It defines an interface to configure the object step by step,
# hiding the implementation details.

class BoardBuilder
  def initialize(width, height)
    @board = Board.new
    @board.width = width
    @board.height = height
    @board.tiles = []
    @board.monsters = []
  end

  def add_tiles(n)
    n.times { @board.tiles << Tile.new }
  end

  def add_monsters(n)
    n.times { @board.monsters << Monster.new }
  end

  attr_reader :board
end

class Board
  attr_accessor :width, :height, :tiles, :monsters
  def initialize; end
end

class Tile; end
class Monster
  end

builder = BoardBuilder.new 2, 3
puts builder.board

board = builder.board
puts board.width

builder.add_tiles(3)
builder.add_monsters(2)
puts board.tiles.size

puts board.monsters.size
