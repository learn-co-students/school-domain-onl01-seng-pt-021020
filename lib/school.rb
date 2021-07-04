require 'pry'

class School
  attr_writer :name, :grade
  attr_reader :roster 

  def initialize(school)
    @school = school
    @roster = {}
  end

  def add_student(name, grade)
    # if @roster.include?(grade) == false
    # if !@roster.include?(grade)
            # @roster[grade] = []
          # end
          roster[grade] ||= []
          roster[grade] << name   
          # binding.pry
  end 

  def grade(grade)
    @roster[grade]
  end 

  def sort
    @roster.each {|grade, name| @roster[grade] = name.sort} 
  end 
end

school = School.new("hazm")
school.add_student("simo", 20)
puts school.roster
puts school.grade(20)