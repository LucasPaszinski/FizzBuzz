defmodule FizzBuzz2 do
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
  def calc(n) when is_integer(n) do
    {n, ""}
    |> fizz?
    |> buzz?
    |> number?
  end

  defp fizz?({n, result}) when rem(n, 3) == 0, do: {n, result<>"Fizz"}
  defp fizz?({n, result}),                     do: {n, ""}

  defp buzz?({n, result}) when rem(n, 5) == 0, do: {n, result<>"Buzz"}
  defp buzz?({n, result}),                     do: {n, ""}

  defp number?({n, result}) when result == "", do: n
  defp number?({_n, result}),                  do: result
end
