# string
full_name = 'Mike Taylor'

# integer
count = 20

# float
book_price = 15.80

# booleans
active = true
admin_user? = false

#Array
fruits = ['Appel', 'Orange', 'Banana']

#Hash
fruit_color = { apple: 'red' }

#Array of hash
customers = [
  { id: 1000, name: 'Clark and Son' },
  { id: 1001, name: 'Clean Fast Co' },
  { id: 1002, name: 'Import International' }
]

#Struct
Person = Struct.new(:name, :age)
person1  = Person.new 'mike', 50
person2 = Person.new 'john', 35

#Set to 'Default title' only if nil or false
title = custom_title || 'Default title'

# Assign if null
search ||= params[:search]

#Safe navigation operator &. (skip if nil)
name = customer&.first_name
