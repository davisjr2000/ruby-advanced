def method_one
  proc_new = Proc.new { return '123' }
  proc_new.call
  return '456'
end

def method_two
  lambda_new = lambda { return '123' }
  lambda_new.call
  return '456'
end

puts "The result of running method_one is #{method_one}" # => 123
# A return in a proc returns from its enclosing block/method
puts "\n"
puts "The result of running method_two is #{method_two}" #=> 456
# A return in a lambda simply returns from the lambda
