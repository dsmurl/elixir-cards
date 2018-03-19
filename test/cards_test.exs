defmodule CardsTest do
  use ExUnit.Case
  doctest Cards

  test "create_deck makes 20 cards" do
    deck = Cards.create_deck()
    deck_length = length(deck)
    assert deck_length == 20
    assert Cards.contains?(deck, "Ace of Spades") == true
  end

  test "shuffling a deck randomizes it" do
    deck = Cards.create_deck()
    refute deck == Cards.shuffle(deck)
  end

end
