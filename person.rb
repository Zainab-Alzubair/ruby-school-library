# Create class Person with intaliase id, name, age
class Person
  def initialize(age, name = 'Unknown', parent_permission: true)
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  attr_accessor :name, :age
  attr_reader :id

  # private method is_of_age?
  def of_age?
    @age >= 18
  end

  # Public method can_use_services
  def can_use_services?
    @parent_permission || is_of_age?
  end
  private :is_of_age?
end
