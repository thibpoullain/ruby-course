# string with simple quote
full_name = 'Ragnar Lothbrok'
# double quote for code injection ONLY ! Ask more performance.
say_my_name = "Your name is #{full_name} my jarl"

# integer
count = 20

# float
book_price = 15.80

# booleans
active = true
admin_user? = false

#Array
weapon = ['Sword', 'Axe', 'Bow']

#Hash
stuff = { head: 'Helmet', legs: 'pants' }

#Array of hash
customers = [
  { id: 1000, name: 'Clark and Son' },
  { id: 1001, name: 'Clean Fast Co' },
  { id: 1002, name: 'Import International' }
]

#Struct
Person = Struct.new(:name, :age)
person1  = Person.new 'Ragnar', 34
person2 = Person.new 'Loki', 35

#Set to 'Default title' only if nil or false
title = custom_title || 'Default title'

# Assign if search is null only
search ||= params[:search]

#Safe navigation operator &. (skip if nil)
name = customer&.first_name
