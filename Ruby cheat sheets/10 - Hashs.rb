product = {}
product['title'] = "Mac Book Pro"
product[:price] = 1599.99
product = { title: 'Mac Book Pro', price: 1599.99 }
puts product.fetch(:cost, 0)  # return default value 0
product.keys   # [:title, :price]
product.values # ['Mac Book Pro', 1599.99]

product.each do |key, value|
  puts key
  puts value
end
