i = 0
numbers = []

while i < 6
  puts "At the top i is #{i}"
  numbers.push(i)

  i = i + 1
  puts "Numbers now: #{i}"
  puts "At the bottom i is #{i}"
end

puts "The numbers: "

for num in numbers
  puts num
end
