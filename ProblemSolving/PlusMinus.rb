#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'plusMinus' function below.
#
# The function accepts INTEGER_ARRAY arr as parameter.
#

n = gets.strip.to_i

arr = gets.rstrip.split.map(&:to_i)

def plusMinus(arr)
    # Write your code here
    l = arr.length()
    pos=neg=o=0.000000 
    arr.each do |x| 
        if x > 0 
            pos += 1.000000
        elsif x < 0
            neg += 1.000000
        else 
            o += 1.000000
        end
    end
    if l > 0    
    puts pos.fdiv(l)
    puts neg.fdiv(l)
    puts o.fdiv(l)
    else 
    puts 0
    puts 0
    puts 0
    end 
end

plusMinus arr
