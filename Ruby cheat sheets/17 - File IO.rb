# Read
text = File.read('exemple.txt')

# Read by lines
lines = File.readlines("exemple.txt")
lines.each do |line|
  puts "Line: #{line}"
end

# Write
File.write('exemple.txt', 'text to write...')

File.open(“index.html”, “w”) do | file |
  file.puts ‘text to write’
end

#read csv
require 'csv'
table = CSV.parse(File.read("products.csv"), headers: true)
table[0]["id"] # 1000
table[0]["name"] # "Mac Book Pro"

#write csv
products = [
  { name: "Mac Book Pro", price: 1599 },
  { name: "IPad Pro", price: 799 }
]
CSV.open("products.csv", "w", headers: products.first.keys) do |csv|
  products.each { |product| csv << product.values }
end
