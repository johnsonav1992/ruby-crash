# Ruby Symbols Practice - Refactored Math Practice

def get_operands
  return rand(1..10), rand(1..10)
end

def get_operator_symbol(choice)
  case choice
  when 1
    :add
  when 2
    :subtract
  when 3
    :multiply
  when 4
    :divide
  else
    nil
  end
end

def get_operator_string(symbol)
  case symbol
  when :add
    '+'
  when :subtract
    '-'
  when :multiply
    '*'
  when :divide
    '/'
  end
end

def calculate(a, b, operation)
  case operation
  when :add
    a + b
  when :subtract
    a - b
  when :multiply
    a * b
  when :divide
    a / b
  end
end

def ask_question(a, b, operation)
  operator = get_operator_string(operation)
  puts "What is #{a} #{operator} #{b}?"
end

# Menu options as a hash with symbols
MENU_OPTIONS = {
  add: "Addition",
  subtract: "Subtraction",
  multiply: "Multiplication",
  divide: "Division"
}

puts 'Welcome to Math Practice!'
puts 'What type of math problems would you like to practice?'
puts

MENU_OPTIONS.each_with_index do |(key, value), index|
  puts "#{index + 1}. #{value}"
end

puts
puts 'Press q at any time to quit'

input = gets.chomp

while input.downcase != 'q'
  choice = input.to_i
  operation = get_operator_symbol(choice)

  if operation
    # Generate appropriate operands
    if operation == :divide
      b = rand(1..10)
      a = b * rand(1..10)
    else
      a, b = get_operands
    end

    ask_question(a, b, operation)
    answer = gets.chomp.to_i

    correct_answer = calculate(a, b, operation)

    if answer == correct_answer
      puts 'Correct!'
    else
      puts "Incorrect. The correct answer is #{correct_answer}."
    end
  else
    puts 'Invalid choice. Please select a number between 1 and 4.'
  end

  input = gets.chomp
end

puts 'Thanks for practicing math!'
