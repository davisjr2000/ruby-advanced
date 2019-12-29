class X
  def a
    puts 'Method a'
  end

  def add_method(m, &block)
    self.class.send(:define_method, m, &block)
  end
end

obj = X.new
obj.instance_variable_set('@name', 'Davis')
obj.add_method(:xyz) { puts "My name is #{@name}" }
obj.xyz
