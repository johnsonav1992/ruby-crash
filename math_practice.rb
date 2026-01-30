def get_operands
  return rand(1..10), rand(1..10)
end

def get_operator(choice)
  case choice
    when 1
      return '+'
    when 2
      return '-'
    when 3
      return '*'
    when 4
      return '/'
    else
      return nil
  end
end

def ask_question(a, b, operator)
  puts "What is #{a} #{operator} #{b}?"
end

puts 'Welcome to Math Practice!'

puts 'What type of math problems would you like to practice?'

puts '1. Addition'
puts '2. Subtraction'
puts '3. Multiplication'
puts '4. Division'

puts 'press q at any time to quit'

while gets.chomp.downcase != 'q'
  choice = gets.chomp.to_i
  
  case choice
  when 1
    a, b = get_operands
    ask_question(a, b, '+')
  
    answer = gets.chomp.to_i
  
    if answer == a + b
      puts 'Correct!'
    else
      puts "Incorrect. The correct answer is #{a + b}."
    end
  when 2
    a, b = get_operands
    ask_question(a, b, '-')
  
    answer = gets.chomp.to_i
  
    if answer == a - b
      puts 'Correct!'
    else
      puts "Incorrect. The correct answer is #{a - b}."
    end
  when 3
    a, b = get_operands
    ask_question
  
    answer = gets.chomp.to_i
    if answer == a * b
      puts 'Correct!'
    else
      puts "Incorrect. The correct answer is #{a * b}."
    end
  when 4
    b = rand(1..10)
    a = b * rand(1..10)
  
    ask_question
  
    answer = gets.chomp.to_i
    if answer == a / b
      puts 'Correct!'
    else
      puts "Incorrect. The correct answer is #{a / b}."
    end
  else
    puts 'Invalid choice. Please select a number between 1 and 4.'
  end
end


puts 'Thanks for practicing math!'
