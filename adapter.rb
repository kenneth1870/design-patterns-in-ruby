# Convert the interface of a class into another interface clients expect.
# Adapter lets classes work together that couldn't otherwise because of
# incompatible interfaces

class Hammer
  def use!
    puts 'Was used'
  end
end

class Tool
  def initialize(adapter)
    @adapter = adapter
  end

  def use_tool
    @adapter.use_tool
  end
end

class HammerAdapter
  def initialize(hammer)
    @hammer = hammer
  end

  def use_tool
    @hammer.use!
  end
end

hammer = Hammer.new
hammer_adapter = HammerAdapter.new(hammer)
tool = Tool.new(hammer_adapter)

tool.use_tool
