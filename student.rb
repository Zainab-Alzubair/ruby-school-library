require_relative './person'
# inherits from Person
class Student < Person
  attr_reader :classroom

  def initialize(classroom, age, name = 'Unknown', parent_permission: true)
    super(name, age, parent_permission: parent_permission)
    @classroom = classroom
  end

  # play_hooky
  def play_hooky
    '¯(ツ)/¯'
  end
end
