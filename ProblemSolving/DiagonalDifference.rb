#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'diagonalDifference' function below.
#
# The function is expected to return an INTEGER.
# The function accepts 2D_INTEGER_ARRAY arr as parameter.
#

def diagonalDifference(arr)
    # Write your code here

    diagonal_sum_1 = 0
    diagonal_sum_2 = 0
    
    l = arr.length - 1
    
    for i in 0..l do 
        diagonal_sum_1 += arr[i][i]
        diagonal_sum_2 += arr[i][l - i]
    end
    return (diagonal_sum_1 - diagonal_sum_2).abs
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

n = gets.strip.to_i

arr = Array.new(n)

n.times do |i|
    arr[i] = gets.rstrip.split.map(&:to_i)
end

result = diagonalDifference arr

fptr.write result
fptr.write "\n"

fptr.close()