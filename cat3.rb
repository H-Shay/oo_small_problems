class Cat
  attr_accessor :name
  @@total = 0
  COLOR = :purple 

  def self.generic_greeting
    puts "Hello I'm a cat!"
  end

  def self.total
    puts @@total 
  end

  def initialize(name)
    @name = name
    @@total +=1
  end

  def rename(name)
    self.name = name
  end 

  def identify
    self
  end 

  def greet
    puts "hello my name is #{@name} and I'm a #{COLOR} cat!"
  end

  def to_s
    puts "I'm #{@name}!"
  end
end

kitty = Cat.new('Sophie')
puts kitty 

