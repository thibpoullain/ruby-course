# Raise exception and output error message
raise "This is an exception"
raise NameError, "This is an NameError exception"

# Debut variable value
raise products.inspect # [{:id=>10, :name=>"ipad pro"},{:id=>20, :name=>"Mac book pro"}]

# Exception handling
begin
  # Any exceptions here ex. 0 / 1
  0 / 1
rescue
  # ...will make this code to run
  puts "Exception"
  do_something()
end

# Exception object
begin
  0 / 1
rescue ZeroDivisionError => e
  puts e.class.name
  puts e.message
end
