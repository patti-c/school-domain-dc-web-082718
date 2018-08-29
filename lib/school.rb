require 'pry'

class School

  attr_reader :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    if @roster.key?(grade) == false
      @roster[grade] = []
    end

    @roster[grade] << name

  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |grade, names|
      @roster[grade] = names.sort
    end
    return @roster
  end

end
