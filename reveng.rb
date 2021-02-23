class Transform
  attr_accessor :info 

  def self.lowercase(info)
    info.downcase
  end

  def initialize(info)
    @info = info
  end

  def uppercase
    info.upcase
  end  
end

my_data = Transform.new('abc')
puts my_data.uppercase
puts Transform.lowercase('XYZ')
