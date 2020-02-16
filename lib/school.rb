# code here!

class School
  
attr_accessor :name, :roster

def initialize(name)
  @name = name
  @roster= {}
end

def add_student(name, grade)
  if @roster.include?(grade)
    @roster[grade] << name
  else
    @roster[grade] = []
    @roster[grade] << name
  end
end

def grade(grade_number)
  @roster[grade_number]
end

def sort
  new_hash = {}
    roster.each do |grade, kids|
      new_hash[grade]= kids.sort
    end
  new_hash
  
end
  
end