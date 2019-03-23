defmodule Cards do
  @moduledoc """
  Documentation for Cards.
  """

  def create_deck do
    ["Ace", "Two", "Three"]
  end

  def shuffle(deck) do
    Enum.shuffle(deck)
  end
end
