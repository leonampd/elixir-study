defmodule Bob do
  defp isAQuestion?(input) do
    String.ends_with?(input, "?")
  end

  defp isYellingMe?(input) do
    String.trim(input) != ""
    and Regex.match?(~r/[a-zA-Z]/, input)
    and String.upcase(input) == input
  end

  defp isYellingQuestion?(input) do
    isYellingMe?(input) && isAQuestion?(input)
  end

  defp shoutInRussian?(input) do
    input == "УХОДИ"
  end

  defp silence?(input) do
    String.trim(input) == ""
  end

  def hey(input) do
    cond do
      isYellingQuestion?(input) -> "Calm down, I know what I'm doing!"
      isYellingMe?(input) or shoutInRussian?(input) -> "Whoa, chill out!"
      isAQuestion?(input) -> "Sure."
      silence?(input) -> "Fine. Be that way!"
      true -> "Whatever."
    end
  end
end
