# String interpolation
name = 'Mike'
message = "Hello #{name}"

# get string number of characters
'This is a string'.length  # 16

#check if the string is empty
'Hello World'.empty?   # false
''.empty?   # true

#convert all characters to uppercase
'hello world'.upcase  # HELLO WORLD

#convert all characters to lowercase
'HI'.downcase  # hi

#convert first characters to uppercase and the rest to lowercase
'mikE'.capitalize  # Mike

#remove white space
'  This is a string with space  '.strip

#return a string left justified and padded with a character
'hello'.ljust(20, '.')  # 'hello...............'

#check if a string include character(s)
'hello World'.include? 'World'  # true

#chaining 2 or more methods
'Hello World'.downcase.include? 'world' # true

#index position (start at postion 0)
'Welcome to this web site'.index('this') # 11

#return string character(s) (start at position 0)
'This is a string'[1]  # h
'This is a string'[0..3]  # This
'This is a string'[-1]  # g (last character)

#replace first sub string
'Hello dog my dog'.sub 'dog', 'cat'. # Hello cat my dog

#replace all sub string
'Hello dog my dog'.gsub 'dog', 'cat'. # Hello cat my cat

#split a string into an array
'Apple Orange Banana'.split ' '  #['Apple', 'Orange', 'Banana']

# get console keyboard input
input = gets
