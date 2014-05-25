# Create a class 'Student' with attributes name and grade. Do NOT make the grade getter public,
# so joe.grade will raise an error. Create a better_grade_than? method

class Student
  attr_accessor :name
  attr_writer :grade

  def initialize(name, grade)
    @name  = name
    @grade = grade
  end

  def better_grade_than?(other_student)
    return unless grade.class == other_student.grade.class
    return !(grade > other_student.grade) if self.grade.is_a? String
    return self.grade > other_student.grade if self.grade.is_a? Integer
  end

  protected

  def grade
    @grade
  end
end

joe = Student.new('Joe', 'A')
bob = Student.new('Bob', 'C')
puts "Well done!" if joe.better_grade_than?(bob)