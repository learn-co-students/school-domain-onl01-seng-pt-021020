class School
  attr_reader :roster
  
  def initialize(name)
    @school_name=name
    @roster={}  
  end
  
  def add_student(name, grade)
    @student_name= name
    @grade_level= grade 
    @roster[grade]||=[]
    @roster[grade] << name
  end
  
  def grade(grade)
    roster[grade]
  end
  
  def sort 
    sorted = {}
    roster.each do |grade,name|
      sorted[grade]=name.sort!
  end
  sorted
  end

end