class MyClass
  def initialize
    @var = 'Hello World'
  end
end

obj = MyClass.new

p obj.instance_eval { @var } # => "Hello World"
p obj.instance_eval('@var')  # => "Hello World
# p obj.eval( "@var")        # => error: eval is a private method

# make eval public to Object

class Object
  public :eval
end

p obj.eval('@var') #=> "Hello World"
