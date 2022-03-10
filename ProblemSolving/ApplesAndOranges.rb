#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'countApplesAndOranges' function below.
#
# The function accepts following parameters:
#  1. INTEGER s
#  2. INTEGER t
#  3. INTEGER a
#  4. INTEGER b
#  5. INTEGER_ARRAY apples
#  6. INTEGER_ARRAY oranges
#

def countApplesAndOranges(s, t, a, b, apples, oranges)
    # Write your code here
    apple_fall = 0
    orange_fall = 0

    apples.each do |d|
        if a + d <= t && a + d >= s 
            apple_fall += 1
        end
    end
    oranges.each do |d|
        if b + d <= t && b + d >= s 
            orange_fall +=1
        end
    end
    puts apple_fall
    puts orange_fall
end

first_multiple_input = gets.rstrip.split

s = first_multiple_input[0].to_i

t = first_multiple_input[1].to_i

second_multiple_input = gets.rstrip.split

a = second_multiple_input[0].to_i

b = second_multiple_input[1].to_i

third_multiple_input = gets.rstrip.split

m = third_multiple_input[0].to_i

n = third_multiple_input[1].to_i

apples = gets.rstrip.split.map(&:to_i)

oranges = gets.rstrip.split.map(&:to_i)

countApplesAndOranges s, t, a, b, apples, oranges
