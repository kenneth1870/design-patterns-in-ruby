# Define an interface for creating an object, but let subclasses decide which
# class to instantiate

class Person
  def initialize(attributes); end
end

class Boss
  def initialize(attributes); end
end

class Employee
  def initialize(attributes); end
end

class PersonFactory
  TYPES = {
    employee: Employee,
    boss: Boss
  }.freeze

  def self.for(type, attributes)
    (TYPES[type] || Person).new(attributes)
  end
end

employee = PersonFactory.for(:employee, name: 'Danny')
boss = PersonFactory.for(:boss, name: 'Danny')
person = PersonFactory.for(:foo, name: 'Danny')
