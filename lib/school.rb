# code here!
class School
  def initialize(skool_name)
    @name = skool_name
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(stu_name, n)
    if @roster.has_key?(n)
      @roster[n] << stu_name
    else
      @roster[n] = []
      @roster[n] << stu_name
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |key, value|
      value.sort!
    end
  end
end
