#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'miniMaxSum' function below.
#
# The function accepts INTEGER_ARRAY arr as parameter.
#

def miniMaxSum(arr)
    min=max=0
    
    arr.sort! {|a, b| a <=> b}
    for i in(0...(arr.length-1)) do
        min += arr[i]
        max += arr[i+1]
    end

    print(min, ' ', max)
end

arr = gets.rstrip.split.map(&:to_i)

miniMaxSum arr
