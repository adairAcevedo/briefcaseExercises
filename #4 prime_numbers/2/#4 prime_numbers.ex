defmodule Primes do
  def prime?(n) when n < 2, do: false # 0 and 1 is not prime
  def prime?(2), do: true # 2 is the only even prime number.
  def prime?(n) when rem(n, 2) == 0, do: false # Any even number greater than 2 is not prime.

  def prime?(n) do
    limit = :math.sqrt(n) |> trunc() # only divisors up to the square root of the number are tested.

    3..limit
    |> Enum.all?(fn i -> rem(n, i) != 0 end) # It only goes through odd numbers; if none divide n, then n is prime.
  end

  def print_primes_up_to(limit) do
    1..limit
    |> Enum.filter(&prime?/1)
    |> Enum.each(&IO.puts/1)
  end
end

Primes.print_primes_up_to(100)
