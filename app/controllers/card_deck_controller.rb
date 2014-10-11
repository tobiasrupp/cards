class CardDeckController < ApplicationController

  def index
    deck = CardDeck.new
    @cards = deck.deck
    render :shuffle
  end

  def shuffle
    deck = CardDeck.new
    @cards = deck.shuffle
  end
end
