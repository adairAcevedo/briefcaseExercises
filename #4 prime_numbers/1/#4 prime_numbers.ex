
res = Enum.reduce(2..100, [], fn num, prime_numbers ->
    if prime_numbers == [] do
        prime_numbers ++ [num]
    else
        is_prime = Enum.all?(prime_numbers, fn prime_n ->
            (Integer.mod(num,prime_n) != 0)
        end)
        if is_prime do
           prime_numbers ++ [num]
         else
           prime_numbers
        end
    end
end)

IO.inspect(res)
