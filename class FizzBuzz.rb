class FizzBuzz
    def answer(number)
        multiple3 = number%3 == 0       #input 3 into first one, expecting True, expecting "fizz"
        multiple5 = number%5 == 0
        return case
        when (multiple3 and multiple5) then "FizzBuzz"
        when multiple3 then "Fizz"
        when multiple5 then "Buzz"
        else number
        end
    end
end



 