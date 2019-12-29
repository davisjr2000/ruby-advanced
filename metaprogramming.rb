puts 'Write a program interactively!'

puts "Enter 'q' to quit."

input = ''

until input == 'q'
  input = gets.chomp
  eval(input) unless input == 'q'
end

# def hello();puts"Hello";end
# def sum(a,b);puts(a+b);end
