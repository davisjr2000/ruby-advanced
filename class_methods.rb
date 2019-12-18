class MyClass
  @@class_variable = 1
  @instance_variable_of_class = 100

  def initialize # <= called by MyClass.new (instance)
    @instance_variable = 5000
  end

  def instance_method
    p @@class_variable
    p @instance_variable
    p @instance_variable_of_class
  end

  def self.class_method
    p @@class_variable
    p @instance_variable
    p @instance_variable_of_class
  end
end

instance = MyClass.new

puts '-- instance.instance_method --'
instance.instance_method
# class_variable: 1
# instance_variable: 5000
# instance_variable_of_class: nil

puts '-- MyClass.class_method --'
MyClass.class_method
# class_variable: 1
# instance_variable: nil
# instance_variable_of_class: 100
