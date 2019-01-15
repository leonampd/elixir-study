defmodule Bob do
  defp question?(input) do
    String.ends_with?(input, "?")
  end

  defp yelling_me?(input) do
    String.upcase(input) != String.downcase(input)
    and String.upcase(input) == input
  end

  defp yelling_question?(input) do
    yelling_me?(input) && question?(input)
  end

  defp silence?(input) do
    String.trim(input) == ""
  end

  def hey(input) do
    input = String.trim(input)
    cond do
      silence?(input) -> "Fine. Be that way!"
      yelling_question?(input) -> "Calm down, I know what I'm doing!"
      yelling_me?(input) -> "Whoa, chill out!"
      question?(input) -> "Sure."
      true -> "Whatever."
    end
  end
end
