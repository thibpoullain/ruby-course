CONSTANT = true
CONSTANT2 = true
$my_string = 'toto'
$my_symbol = :toto
$my_array = ['a', 'b']
$my_float = 3.14
$my_nil = nil
$my_boolean = true

def hello
  "Hello, Ruby World!"
end

def nothing(a = 1, b = 2, c = 3)
  nil
end

def array_42(array)
  array.include?(42)
end

def fibonacci( n )
  return  n  if ( 0..1 ).include? n
  ( fibonacci( n - 1 ) + fibonacci( n - 2 ) )
end

def who_is_bigger(*arg)
  return "nil detected" if arg.include? nil
  bigger = arg.reduce(arg.first) { |memo, elem| elem > memo ? elem : memo }
  return "#{bigger} is bigger"
end

def reverse_upcase_noLTA(string)
  string.reverse.upcase.gsub(/[LTA]/, '')
end

def magic_array(array)
  array.flatten.delete_if { |e| e % 3 == 0 }.map { |e| e*2 }.uniq.reverse.sort
end