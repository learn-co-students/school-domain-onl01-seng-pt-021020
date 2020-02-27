class School
  def initialize(school_name)
    @name = school_name
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(student_name, num)
    if @roster.keys.include?(num)
      @roster[num] << student_name
    else
      @roster[num] = []
      @roster[num] << student_name
    end
  end

  def grade(num)
    @roster[num]
  end

  def sort
    @roster.each do |key, value|
      value.sort!
    end

  end
end
