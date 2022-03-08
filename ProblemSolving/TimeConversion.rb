#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'timeConversion' function below.
#
# The function is expected to return a STRING.
# The function accepts STRING s as parameter.
#

def timeConversion(s)
    # Write your code here
    split_array = s.split(':')
    last_num, m = split_array[-1].scan(/\d+|\D+/)
    if m === "PM" && split_array[0] != "12"
        split_array[0] = (split_array[0].to_i + 12).to_s
    elsif m === "AM" && split_array[0] === "12"
        split_array[0] = "00"
    end
    
    split_array.pop
    split_array.append(last_num)
    final = split_array.join(":")
    
    return final
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

s = gets.chomp

result = timeConversion s

fptr.write result
fptr.write "\n"

fptr.close()
