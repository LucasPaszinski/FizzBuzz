defmodule SuperSmallFizzBuzzTest do
  use ExUnit.Case
  doctest SuperSmallFizzBuzz

  test "Test FizzBuzz interval" do
    from_9_to_16 = ["Fizz", "Buzz", 11, "Fizz", 13, 14, "FizzBuzz", 16]
    assert FizzBuzz.start(9..16) == from_9_to_16
  end
end
