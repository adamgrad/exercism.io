class School
  def initialize
    @grades = Hash.new { |hash, grade| hash[grade] = [] }
  end

  def add(name, grade)
    @grades[grade] = @grades[grade].push(name).sort
  end

  def students(grade)
    @grades[grade]
  end

  def students_by_grade
    @grades.sort.map { |key, value| { grade: key, students: value } }
  end
end

module BookKeeping
  VERSION = 3
end
