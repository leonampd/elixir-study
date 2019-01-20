defmodule Bob do
  defp question?(input) do
    String.ends_with?(input, "?")
  end

  defp yelling_me?(input) do
    String.trim(input) != ""
    and Regex.match?(~r/[[:alpha:]]/u, input)
    and String.upcase(input) == input
  end

  defp yelling_question?(input) do
    yelling_me?(input) && question?(input)
  end

  defp shout_in_russian?(input) do
    input == "УХОДИ"
  end

  defp silence?(input) do
    String.trim(input) == ""
  end

  def hey(input) do
    cond do
      yelling_question?(input) -> "Calm down, I know what I'm doing!"
      yelling_me?(input) or shout_in_russian?(input) -> "Whoa, chill out!"
      question?(input) -> "Sure."
      silence?(input) -> "Fine. Be that way!"
      true -> "Whatever."
    end
  end
end
