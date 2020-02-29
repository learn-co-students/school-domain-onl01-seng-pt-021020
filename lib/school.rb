class School

  attr_accessor :name, :roster
  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  def add_student(student, level)
    @roster[level] ||= []
    @roster[level] << student
  end 

  def grade(number)
    @roster[number]
  end

  def sort
    @roster.each do |grade, name|
      @roster[grade] = name.sort
    end
  end
end
school = School.new("Bayside High School")
school.roster
school.add_student("Zach Morris", 9)
school.roster
school.add_student("AC Slater", 9)
school.add_student("Kelly Kapowski", 10)
school.add_student("Screech", 11)
school.roster
school.grade(9)
school.sort