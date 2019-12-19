words = %w(hello world goodbye mars)
numbers = (1..10).to_a

start_time = Time.new
puts "Start: %10.9f" % start_time

words_thread = Thread.new{
  words.each { |word| puts word }
}

numbers_thread = Thread.new{
  numbers.each { |number| puts number }
}

[words_thread, numbers_thread].each { |t| t.join }

end_time = Time.new
puts "End: %10.9f" % end_time.to_f

total_time = end_time - start_time
puts "Total Time: %10.9f" % total_time.to_f
