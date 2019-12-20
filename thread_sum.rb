$i = 0

def add_num(n)
    n + 1
end

threads = (1..3).collect {
    Thread.new {
        10000000.times{ $i = add_num($i) }
    }
}

threads.each{ |t| t.join }
puts ($i) #=> Always returns a different value