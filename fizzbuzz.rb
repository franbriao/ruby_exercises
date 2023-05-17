#!/bin/ruby

require 'json'
require 'stringio'


#
# Complete the 'fizzBuzz' function below.
#
# The function accepts INTEGER n as parameter.
#

def fizzBuzz(n)
    for i in 1..n do
        if (i % 3 == 0) && (i % 5 == 0)
            puts "FizzBuzz"
        elsif (i % 3 == 0)
            puts "Fizz"
        elsif (i % 5 == 0)
            puts "Buzz"
        else
            puts i
        end
    end
end
n = gets.strip.to_i
