# The input is a single number: the number at which the game starts. 
# Write a program that plays the Threes game, and outputs a valid sequence of steps you need to take to get to 1. 
# Each step should be output as the number you start at, followed by either -1 or 1 (if you are adding/subtracting 1 before dividing), 
# or 0 (if you are just dividing). The last line should simply be 1.
num = gets.to_i
while num > 1
  if num % 3 == 0
    puts "#{num} 0"
    num /= 3
  elsif (num + 1) % 3 == 0
    puts "#{num} 1"
    num += 1
    num /= 3
  elsif (num - 1) % 3 == 0
    puts "#{num} -1"
    num -= 1
    num /= 3
  end
end
puts num
