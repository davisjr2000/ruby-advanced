def calc(a, b)
  begin
    result = a / b
  rescue TypeError, NoMethodError => e
    puts e
    puts e.class
    puts('One of the values is not a number')
  rescue StandardError => e
    puts e
    puts e.class
    result = nil
  else
    puts 'The code ran successfully.'
    puts "Result: #{result}"
  ensure
    puts "You entered #{a} and #{b}"
  end
  return result
end

calc(20, 0)
puts
calc(20, '100')
puts
calc('100', 100)
puts
calc(10, 2)
