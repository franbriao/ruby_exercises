#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'plusMinus' function below.
#
# The function accepts INTEGER_ARRAY arr as parameter.
#

def plusMinus(arr, n)
    c_pos=c_neg=c_zero = 0
    
    arr.each do |item|
        c_pos += 1 if item > 0
        c_zero += 1 if item == 0
        c_neg += 1 if item < 0
    end
    
    
    printf( "%.6f \n", (c_pos / n.to_f))
    printf( "%.6f \n", (c_neg / n.to_f))
    printf( "%.6f \n", (c_zero / n.to_f))
end


n = gets.strip.to_i
arr = gets.rstrip.split.map(&:to_i)

plusMinus arr, n

