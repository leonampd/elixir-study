defmodule Bob do
  defp is_question?(input) do
    String.ends_with?(input, "?")
  end

  defp is_yelling_me?(input) do
    String.trim(input) != ""
    and Regex.match?(~r/[a-zA-Z]/, input)
    and String.upcase(input) == input
  end

  defp is_yelling_question?(input) do
    is_yelling_me?(input) && is_question?(input)
  end

  defp shout_in_russian?(input) do
    input == "УХОДИ"
  end

  defp silence?(input) do
    String.trim(input) == ""
  end

  def hey(input) do
    cond do
      is_yelling_question?(input) -> "Calm down, I know what I'm doing!"
      is_yelling_me?(input) or shout_in_russian?(input) -> "Whoa, chill out!"
      is_question?(input) -> "Sure."
      silence?(input) -> "Fine. Be that way!"
      true -> "Whatever."
    end
  end
end
