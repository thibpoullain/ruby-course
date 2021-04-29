# Equal ==   And &&   Or ||   Not !
if action == 1
  puts "action 1"
elsif action < 5
  puts "action not 1 but less than 5"
else
  puts "action greater than 5"
end

#Unless (negated if)
puts 'The user is not active' unless active == true

#Ternary operator
active ? 'The user is active' : 'The user is not active'

#Truthy or falsy
# false and nil equates to false.
# Every other object like 1, 0, "" are all evaluated to true

# case when else
case points
when 0
  "Not good"
when 1..50
  "Better but not great"
when 51..70
  "Thats good!"
when 71..99
  "Great"
when 100
  "Perfect"
else
  "Score error"
