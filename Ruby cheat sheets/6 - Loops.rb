loop do
  puts "Stop loop by using 'break' statement"
  puts "Skip one occurence by using 'next' statement"
end

while number < 100
  puts number
  number += 1
end

# Range
(1..10).each { |i| puts i }
(1..10).each do |i|
  puts i
end

10.times { puts "Hello World" }

