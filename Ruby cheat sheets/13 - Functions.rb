def greeting(name = 'John')  # = default argument value
  "Hello #{name}"  # implicit return
end
puts greeting('Paul Atreïde')  # Hello Paul Atreïde

# variable number of arguments (name will be an array)
# google : single splat operator
def print_phrases(main_phrase, *phrases)
  puts "This is main phrase: #{main_phrase}"
  puts phrases
end
print_phrases("phrase one","phrase two", "phrase three", "phrase four", "phrase five")


# variable number of arguments (name will be an array)
# google : double splat operator
def print_list_of(**books_and_articles)
  books_and_articles.each do |book, article|
    puts book
    puts article
  end
end
# As an argument, we define a hash in which we will write books and articles.
books_and_articles_we_love = {
  "Ruby on Rails 4": "What is webpack?",
  "Ruby essentials": "What is Ruby Object Model?",
  "Javascript essentials": "What is Object?"
}
print_list_of(books_and_articles_we_love)


#naming parameters
def display_product(price, options = {})
  puts price, options[:hidden], options[:rounded]
end
display_product 1599, hidden: false, rounded: true
