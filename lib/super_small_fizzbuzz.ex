defmodule SuperSmallFizzBuzz do
  @doc """
    Calculate the FizzBuzz of all numbers in a given interval.
    By default the interval is 1..100

    It's usage can be seen in the example below.

    iex> FizzBuzz.start(1..3)
    [1, 2, "Fizz"]
  """
  def start(interval \\ 1..100) do
    interval
    |> Enum.map(fn n ->
      result = if rem(n, 3) == 0, do: "Fizz", else: ""
      result = result <> if rem(n, 5) == 0, do: "Buzz", else: ""
      if result == "", do: n, else: result
    end)
  end
end
