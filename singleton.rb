# Define an unique instance of an object
class Configuration

  @@instance = Configuration.new
  
  def self.instance
    @@instance
  end

  private_class_method :new
end

config1 = Configuration.instance
config2 = Configuration.instance
puts config1 == config2