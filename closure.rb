def sum(x)
  return lambda{ |y| y + x }
end

sum2 = sum(2)
puts sum2.call(5) # => 7
puts sum2.call(10) # => 12

sum10 = sum(10)
puts sum10.call(5) # => 15
puts sum10.call(10) # => 20

puts sum10.call(sum10.call(80)) # => 100
