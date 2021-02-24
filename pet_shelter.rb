
class Shelter
  attr_accessor :pets 
  @@adoptions = {}

  def initialize
    @pets = []
  end

  def add_pets(animal)
    pets << animal
  end 

  def print_unadopted_pets
    pets.each do |pet|
      puts "a #{pet.species} named #{pet.name}"
    end 
  end

  def adopt(owner, animal)
    owner.pets << animal
    if @@adoptions.has_key?(owner)
      @@adoptions[owner] << animal 
    else 
      @@adoptions[owner] = [animal]
    end
  end

  def print_adoptions
    @@adoptions.each do |key, value| 
      puts "#{key.name} has adopted the following pets:"
      value.each do |animal|
        puts "a #{animal.species} named #{animal.name}"
      end
    end
  end 

  def count_unadopted_pets
    pets.size 
  end
end

class Pet
  attr_accessor :name, :species

  def initialize(species, name)
    @species = species
    @name = name 
  end
end

class Owner
  attr_accessor :pets, :name

  def initialize(name)
    @name = name
    @pets = []
  end

  def number_of_pets
    pets.size
  end 
end 


# butterscotch = Pet.new('cat', 'Butterscotch')
# pudding      = Pet.new('cat', 'Pudding')
# darwin       = Pet.new('bearded dragon', 'Darwin')
# kennedy      = Pet.new('dog', 'Kennedy')
# sweetie      = Pet.new('parakeet', 'Sweetie Pie')
# molly        = Pet.new('dog', 'Molly')
# chester      = Pet.new('fish', 'Chester')

# phanson = Owner.new('P Hanson')
# bholmes = Owner.new('B Holmes')

 shelter = Shelter.new


# shelter.adopt(phanson, butterscotch)
# shelter.adopt(phanson, pudding)
# shelter.adopt(phanson, darwin)
# shelter.adopt(bholmes, kennedy)
# shelter.adopt(bholmes, sweetie)
# shelter.adopt(bholmes, molly)
# shelter.adopt(bholmes, chester)
# shelter.print_adoptions
# puts "#{phanson.name} has #{phanson.number_of_pets} adopted pets."
# puts "#{bholmes.name} has #{bholmes.number_of_pets} adopted pets."

Asta = Pet.new('dog', 'Asta' )
Laddie = Pet.new('dog', 'Laddie')
Fluffy = Pet.new('cat', 'Fluffy' )
Kat = Pet.new('cat', 'Kat')
Ben = Pet.new('cat', 'Ben' )
Chatterbox = Pet.new('parakeet', 'Chatterbox' )
Bluebell = Pet.new('parakeet', 'Bluebell' )

shelter.add_pets(Asta)
shelter.add_pets(Ben)

shelter.print_unadopted_pets
puts "The animal shelter has #{shelter.count_unadopted_pets} unadopted pets."


