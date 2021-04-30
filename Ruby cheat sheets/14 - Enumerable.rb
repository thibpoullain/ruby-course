#map (return a modified array)
names = ['paul', 'john', 'peter']
names_capitalize = names.map do |name|
  name.capitalize
end
# ['Paul', 'John', 'Peter']

# short hand version
names_capitalize = names.map { |name| name.capitalize }

# Symbol to proc
names_capitalize = names.map &:capitalize

#select (return all match)
products = [
  { name: 'Mac Book Pro', active: true, price: 1599.99 },
  { name: 'iWatch', active: false, price: 599.99 },
  { name: 'iPad Pro', active: true, price: 699.99 },
]
active_products = products.select { | product | product[:active] }

#Detect (return first match)
first_active_product = products.detect { | product | product[:active] }

# Reduce (return one)
total = products.reduce(0) do |total, product|
  total = total + product[:price]
end
puts total  # 2899.97

# Count (return array count)
nb_products = products.count { |product| product.price > 1000 }
puts nb_products # 1