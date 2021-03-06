class School


  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student(student_name, grade)
    @roster[grade] ||= []
    @roster[grade] << student_name    
  end

  def grade(grade)
    @roster[grade].map { |x| x }
  end
  
  def sort
    @roster.sort_by(&:first).map { |x, g| [x, g.sort]}.to_h
  end

end