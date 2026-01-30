puts "Hey!!"

3.times do 
  puts "This is a test."
end

puts "Adding more functionality..."

# Simple counter example
counter = 0
5.times do |i|
  counter += i
  puts "Counter is now: #{counter}"
end

# Array manipulation
numbers = [1, 2, 3, 4, 5]
doubled = numbers.map { |n| n * 2 }
puts "Original: #{numbers}"
puts "Doubled: #{doubled}"

# Simple method definition
def greet name
  puts "Hello, #{name}!"
end

greet("World")
