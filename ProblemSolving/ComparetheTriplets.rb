#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'compareTriplets' function below.
#
# The function is expected to return an INTEGER_ARRAY.
# The function accepts following parameters:
#  1. INTEGER_ARRAY a
#  2. INTEGER_ARRAY b
#

def compareTriplets(a, b)
    # Write your code here 
    a_score = 0 
    b_score = 0 
    a.each_index {|i| 
        if a[i] > b[i]
            a_score += 1
        elsif b[i] > a[i]
            b_score += 1 
        end 
    }
    score_array = [a_score, b_score]
    return score_array
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

a = gets.rstrip.split.map(&:to_i)

b = gets.rstrip.split.map(&:to_i)

result = compareTriplets a, b

fptr.write result.join " "
fptr.write "\n"

fptr.close()
