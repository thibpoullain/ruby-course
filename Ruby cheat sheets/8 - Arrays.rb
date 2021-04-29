fruits = ['Apple', 'Orange', 'Banana']
fruits = %w(Apple Orange Banana)

fruits.length # 3

fruits.first  # Apple
fruits.last   # Banana

fruits[0]     # Apple
fruits[-2]    # Orange
fruits[3]     # nil
fruits[1..2]  # ['Orange', 'Banana']

# iteration
fruits.each do { |fruit| puts fruit }

fruits.each_with_index do |fruit, index|
  puts fruit  # Apple
  puts index  # 0
end

fruits.include? 'Orange'  # true
[1, 5, 2, 4, 3].sort  # [1, 2, 3, 4, 5]
[1, 2, 3].reverse  # [3, 2, 1]

fruits.push 'Strawberry' # append at the end
fruits <<  'Raspberry' # append at the end
fruits.unshift 'Strawberry' # Append in front

fruits.pop # remove last
fruits.delete_at(0) # remove first element
fruits.shift  # remove the first element

fruits.join ', '  # 'apple, orange, banana'

# Add in a new array
array1 = %w(dog cat bird)
array2 = %w(fish hamster)
array3 = array1 + array2 #['dog', 'cat', 'bird', 'fish', 'hamster']

# Concat in the same array
array1.concat array2
puts array1  #['dog', 'cat', 'bird', 'fish', 'hamster']

# Constructing arrays with * splat operator
puts ['dog', *array2, 'bird']  #['dog', 'fish', 'hamster', bird']
