#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'staircase' function below.
#
# The function accepts INTEGER n as parameter.
#

def staircase(n)
    # Write your code here
    1.upto(n) do |i|
        puts ' ' * (n-i) + '#' * i
    end    
end

n = gets.strip.to_i

staircase n
