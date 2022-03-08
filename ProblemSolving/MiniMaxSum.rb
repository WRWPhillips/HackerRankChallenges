#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'miniMaxSum' function below.
#
# The function accepts INTEGER_ARRAY arr as parameter.
#

def miniMaxSum(arr)
    # Write your code here
    min_sum = 0
    max_sum = 0

    arr.sort[0..3].each do |x|
        min_sum += x
    end
        arr.sort[1..4].each do |y|
        max_sum += y
    end
    
    puts min_sum.to_s + ' ' + max_sum.to_s
end

arr = gets.rstrip.split.map(&:to_i)

miniMaxSum arr
