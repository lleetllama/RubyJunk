#Number of card decks in play
$decks_in_play = 1
$card_deck = []

class Card
  attr_accessor :face
  attr_accessor :suit
 
  def initialize(face, suit)
    @face = face
    @suit = suit
  end
 
  def output_card
    puts "#{@face} of #{@suit}"
  end
end
 
class Deck
  attr_accessor :cards
    
  def initialize
    @face = ["Ace", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine", "Ten", "Jack", "Queen", "King",]
    @suits = ["Clubs", "Hearts", "Spades", "Diamonds"]
    @cards = []
 
    $decks_in_play.times do
      @face.each do |face|
        @suits.each do |suit|
          @cards << Card.new(face, suit)
        end
      end
    end
  end
  
  def shuffle_deck
    @cards.shuffle!
  end
  
  def draw
    @cards.pop 
  end
  
  def remaining
    @cards.length
  end
  
end

###############################testing#area########################################

def setup
  puts "how many card decks do you want to use?"
  $decks_in_play = gets.chomp.to_i
  $card_deck = Deck.new
  $card_deck.shuffle_deck
  puts "Deck of #{$card_deck.remaining} cards built and shuffled."
end

setup
puts ''
puts "how many cards do you want?"

(gets.chomp.to_i).times do
  puts $card_deck.draw.output_card
end

=begin
a Game or Board class that would handle the rules and conditions
or possibly put it all in a player class. for a game like black jack I would also build a dealer class
=end

