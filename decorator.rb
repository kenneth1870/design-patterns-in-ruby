# Attach additional responsibilities to an object dynamically. Decorators
# provide a flexible alternative to subclassing for extending functionality
class ItemDecorator
  def initialize(item)
    @item = item
  end

  # this needs to be delegated with other efective way
  def use
    @item.use
  end
end

class MagicItemDecorator < ItemDecorator
  def price
    @item.price * 3
  end

  def description
    @item.description + 'Magic'
  end
end

class MasterpieceItemDecorator < ItemDecorator
  def price
    @item.price * 2
  end

  def description
    @item.description + 'Masterpiece'
  end
end

class Item
  attr_reader :price, :description
  def initialize
    @price = 10
    @description = 'Item '
  end

  def use
    'do something'
  end
end

item = Item.new
magic_item = MagicItemDecorator.new(item)
puts magic_item.price

puts magic_item.description

masterpiece_item = MasterpieceItemDecorator.new(item)
puts masterpiece_item.price

puts masterpiece_item.description

item.use
magic_item.use
masterpiece_item.use
