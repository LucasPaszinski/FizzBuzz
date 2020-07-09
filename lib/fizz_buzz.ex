defmodule FizzBuzz do
  @moduledoc """
  Documentation for `FizzBuzz`.
  """
  @doc """
    Calculate the FizzBuzz of all numbers in a given interval.
    By default the interval is 1..100

    It's usage can be seen in the example below.

    iex> FizzBuzz.start(1..3)
    [1, 2, "Fizz"]
  """
  def start(interval \\ 1..100) do
    interval
    |> Enum.map(&calc(&1))
    |> IO.inspect(limit: :infinity) # Do not limit at 50
  end

  @doc """
    Calculate the FizzBuzz of a single number.

    It's usage can be seen in the example below.

    iex> FizzBuzz.calc(3)
    "Fizz"
  """
  def calc(n) when is_integer(n), do: fizzbuzz({rem(n, 3), rem(n, 5), n})

  defp fizzbuzz({0, 0, _n}), do: "FizzBuzz"
  defp fizzbuzz({0, _, _n}), do: "Fizz"
  defp fizzbuzz({_, 0, _n}), do: "Buzz"
  defp fizzbuzz({_, _, n}), do: n
end

IO.puts "The FizzBuzz from 1 to 100 is:"
FizzBuzz.start()
