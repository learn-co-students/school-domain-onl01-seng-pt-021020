#A DOMAIN MODEL is a representation of real-world concepts in software. 

#The concept of domain modeling is key in object orientation. In object orientation, we think of our classes as templates for objects. The instances of our classes are thought of as objects. For example, a Person class produces people objects that have attributes and behaviors, as described and enacted by instance methods.

class School 
    attr_accessor :name, :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(name, grade) #grade is the KEY, name is the VALUE
        @student_name = name
        @grade = grade

        #we are starting with an empty hash, right? Our desired result is a hash with a key that points to a value of an array, that contains a series of items.
        
        #However, We can't push an item into an array that is the value of a key that doesn't exist yet! 

        #So, we first need to create the new key and point it to an empty array. Then we can push the new value into that array.

        if @roster.include?(grade) == false 
            @roster[grade] = [] 
        end

        roster[grade] << name
    end

    def grade(number)
        @roster[number]
    end

    def sort
        @roster.each do |grade, name|
            @roster[grade] = name.sort #for each key, which is a grade, take all the values, which are student names, and sort them. 
        end
    end

        
end
school = School.new("James Logan High")
school.add_student("AC Slater", 9)
school.add_student("Kelly Kapowski", 10)
school.add_student("Screech", 11)
school.add_student("A Jock", 12)
school.add_student("Another junior", 11)
school.roster
school.sort 