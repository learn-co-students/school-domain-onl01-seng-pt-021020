class School
  
  def initialize(school_name)
    @name = school_name
    @roster = {}
  end
  
  def roster
    @roster
  end
  
  def add_student(student_name, grade_level)
    if @roster.keys.include?(grade_level)
      roster[grade_level] << student_name
    else 
      @roster[grade_level] = []
      @roster[grade_level] << student_name
    end
  end
  
  
  def grade(grade)
    if @roster.keys.include?(grade)
      roster[grade]
    end
  end
  
  def sort
    sort = {}
    @roster.each do |grade, name|
      sort[grade]=name.sort!
    end
    sort
  end
  
  
end

school = School.new("Bayside High School")