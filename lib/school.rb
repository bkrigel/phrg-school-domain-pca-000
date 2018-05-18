class School
  attr_reader :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    roster[grade] = [] unless roster.keys.include?(grade)
    roster[grade] << name
    roster
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    roster.each do |grade, names|
      names.sort!
    end
  end

end
