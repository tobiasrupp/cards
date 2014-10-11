class CardDeck 
  attr_reader :deck
  def initialize
    @deck = %w(2-Diamond 3-Diamond 4-Diamond 5-Diamond 6-Diamond 7-Diamond 8-Diamond 9-Diamond 10-Diamond Jack-Diamond Queen-Diamond King-Diamond Ace-Diamond)
    @deck.concat %w(2-Heart 3-Heart 4-Heart 5-Heart 6-Heart 7-Heart 8-Heart 9-Heart 10-Heart Jack-Heart Queen-Heart King-Heart Ace-Heart) 
    @deck.concat %w(2-Club 3-Club 4-Club 5-Club 6-Club 7-Club 8-Club 9-Club 10-Club Jack-Club Queen-Club King-Club Ace-Club)
    @deck.concat %w(2-Spade 3-Spade 4-Spade 5-Spade 6-Spade 7-Spade 8-Spade 9-Spade 10-Spade Jack-Spade Queen-Spade King-Spade Ace-Spade) 
    @deck.concat %w(Joker-1 Joker-2) 
  end

  def shuffle
    @deck.shuffle
  end
end