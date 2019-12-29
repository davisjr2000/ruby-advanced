$outercount = 0

def add_up(num)
  num += 1
  $outercount += 1
  puts "Num is #{num}, $outercount is #{$outercount}"

  add_up(num) if $outercount < 5

  puts "At END: Num is #{num}, $outercount is #{$outercount}"
end

add_up(0)
