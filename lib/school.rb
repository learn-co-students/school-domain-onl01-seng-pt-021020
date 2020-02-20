class School
  attr_reader :name, :roster
  
  def initialize(school_name)
    @name = school_name
    @roster = {}
  end
  
  def add_student(name, grade_level)
    if !@roster[grade_level]
      @roster[grade_level] = []
    end
    @roster[grade_level] << name
  end
  
  def grade(grade_level)
    @roster[grade_level]
  end
  
  def sort
    sorted_roster = {}
    @roster.each do |grade_level, students|
      sorted_roster[grade_level] = students.sort
    end
    sorted_roster
  end
  
end