 #It means being able to send the same message to different objects
 # and get different results. Let’s look at a few different ways 
 #to achieve this.

class Person
  def initialize(first, last, age)
    @first_name = first
    @last_name = last
    @age = age
  end

  def birthday
    @age += 1
  end

  def introduce(type)
    if type == 'Student'
      puts "Hello teacher. My name is #{@first_name} #{@last_name}."
    elsif type == 'Teacher'
      puts "Hello class. My name is #{@first_name} #{@last_name}."
    elsif type == 'Parent'
      puts "Hi. I'm one of the parents. My name is #{@first_name} #{@last_name}."
    else
      puts "Hi everyone. My name is #{@first_name} #{@last_name}."
    end
  end
end

john = Person.new('John', 'Doe', 18)
john.introduce('Student')
