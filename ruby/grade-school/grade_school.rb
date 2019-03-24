class School
  def initialize
    @students = Hash.new {|grade, student| grade[student] = Array.new }
  end

  def add(student, grade)
    @students[grade] << student 
  end

  def students(grade)
    @students[grade].sort
  end

  def students_by_grade
    @students.sort.map{ |grade, student| {grade: grade, students: student.sort} }
  end
end

module BookKeeping
  VERSION = 3
end
