class Card
  attr_reader :rank, :suit

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  def to_i
    case rank
    when 'Ace'
      14
    when 'King'
      13
    when 'Queen'
      12
    when 'Jack'
      11
    else
      rank.to_i
    end
  end

  def <=>(other)
    self.to_i <=> other.to_i
  end 

  def min
    cards.sort.first
  end

  def max
    cards.sort.last
  end

  def ==(other)
    rank == other.rank
    suit == other.suit
  end

  def to_s
    "#{rank} of #{suit}"
  end
end

cards = [Card.new(2, 'Hearts'),
         Card.new(10, 'Diamonds'),
         Card.new('Ace', 'Clubs')]
puts cards
puts cards.min == Card.new(2, 'Hearts')
puts cards.max == Card.new('Ace', 'Clubs')

cards = [Card.new(5, 'Hearts')]
puts cards.min == Card.new(5, 'Hearts')
puts cards.max == Card.new(5, 'Hearts')

cards = [Card.new(4, 'Hearts'),
         Card.new(4, 'Diamonds'),
         Card.new(10, 'Clubs')]
puts cards.min.rank == 4
puts cards.max == Card.new(10, 'Clubs')

cards = [Card.new(7, 'Diamonds'),
         Card.new('Jack', 'Diamonds'),
         Card.new('Jack', 'Spades')]
puts cards.min == Card.new(7, 'Diamonds')
puts cards.max.rank == 'Jack'

# cards = [Card.new(8, 'Diamonds'),
#          Card.new(8, 'Clubs'),
#          Card.new(8, 'Spades')]
# puts cards.min.rank == 8
# puts cards.max.rank == 8