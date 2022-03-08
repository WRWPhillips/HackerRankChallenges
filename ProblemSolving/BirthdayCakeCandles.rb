#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'birthdayCakeCandles' function below.
#
# The function is expected to return an INTEGER.
# The function accepts INTEGER_ARRAY candles as parameter.
#

def birthdayCakeCandles(candles, candles_count)
    # Write your code here
    max_height = candles.sort[candles_count - 1]
    num_of_max = candles.count(max_height)
    return num_of_max
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

candles_count = gets.strip.to_i

candles = gets.rstrip.split.map(&:to_i)

result = birthdayCakeCandles candles, candles_count

fptr.write result
fptr.write "\n"

fptr.close()