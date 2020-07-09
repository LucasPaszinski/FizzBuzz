defmodule FizzBuzz2Test do
  use ExUnit.Case
  doctest FizzBuzz2

  test "Test FizzBuzz interval" do
    from_9_to_16 = ["Fizz", "Buzz", 11, "Fizz", 13, 14, "FizzBuzz", 16]
    assert FizzBuzz.start(9..16) == from_9_to_16
  end

  test "Test Fizz" do
    assert FizzBuzz.calc(3) == "Fizz"
  end

  test "Test Buzz" do
    assert FizzBuzz.calc(5) == "Buzz"
  end

  test "Test FizzBuzz" do
    assert FizzBuzz.calc(15) == "FizzBuzz"
  end

  test "Test number" do
    assert FizzBuzz.calc(16) == 16
  end

end
