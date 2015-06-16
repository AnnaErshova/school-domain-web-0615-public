require 'pry'

class School

  attr_accessor :roster, :name, :grade

  def initialize(name, roster={})
    @name = name
    @roster = Hash.new{ |hash,key| hash[key] = [] } # intiatilizing an emtpty array with a default empty hash
  end

  def add_student(name, grade)
    #if @roster[grade] # is @roster[grade] already an array?
      @roster[grade] << name
      # binding.pry
    #else
    #  @roster[grade] = [name]
    #end
  end # end add_student

  def grade(grade)
    @roster[grade]
  end # end grade

  def sort
    @roster.each do |grade, students|
      students.sort!
    end
  end # end sort

end # end class

#School ::new has an empty roster when initialized def roster
#School #add_student is able to add a student def add_student
#School #add_student is able to add multiple students to a class (grade)
#School #add_student is able to add students to different grades
#School #grade is able to retreive students from a grade
#School #sort is able to sort the students
