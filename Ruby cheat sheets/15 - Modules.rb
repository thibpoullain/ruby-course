# Static module method
module Display
  def self.hello
    puts 'Hello'
  end
end
Display.hello

# Class Mix in
module Display
  def hello
    puts 'Hello'
  end
end

require_relative 'display.rb'
class Customer
  include Display
end
Customer.new.hello

# Module as namespace
module Person
  class Customer
    def initialize(name)
      @name = name
    end
  end
end
customer = Person::Customer.new('Mike Taylor')

# Constant
module Contact
  ACCESS_KEY = 'abc123'
  class Person
      ACCESS_KEY = '123abc'
  end
end
puts Contact::ACCESS_KEY
puts Contact::Person::ACCESS_KEY

#Module or class private method
module Display
  def initialize
    greeting
  end

  private

  def greeting
    puts 'hello'
  end
end
