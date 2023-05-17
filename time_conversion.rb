#!/bin/ruby

#
# Complete the 'timeConversion' function below.
#
# The function is expected to return a STRING.
# The function accepts STRING s as parameter.
#

def timeConversion(s)
    hour = s.slice(0, 2).to_i
    minutes = s.slice(3, 2).to_i
    seconds = s.slice(6, 2).to_i
    time = s.slice(8, 2)
    
    hour = 0 if hour == 12
        
    hour += 12 if time == "PM"
    
    "%02d:%02d:%02d" % [hour, minutes, seconds]
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

s = gets.chomp

result = timeConversion s

fptr.write result
fptr.write "\n"

fptr.close()

