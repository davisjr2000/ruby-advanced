f = File.new('myfile.txt', 'w') # => Write

# Create File if it doesn't exist
# Overwrite File if it exists
f.puts('I', 'wandered', 'lonely', 'as', 'a', 'cloud')

f.close # => Close File

charcount = 0
linecount = 0

f = File.new('myfile.txt', 'r') # => Read

until f.eof # => End Of File
  char = f.getc # => GetChar
  if char.ord == 10 # => Space /n
    linecount += 1
    puts "End Of Line ##{linecount}"
  else
    puts char
    charcount += 1
  end
end

puts 'End Of File!'

f.close

puts "This file contains #{linecount} lines and #{charcount} characters."
