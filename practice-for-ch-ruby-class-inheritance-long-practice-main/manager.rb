require_relative "employee"

class Manager < Employee

  attr_reader :employees

  def initialize(name, title, salary, boss=nil)
    super
    @employees = []
  end

  def bonus(multiplier)
    total_salary = 0
    employees.each do |employee|
      total_salary += employee.salary
    end
    bonus = total_salary * multiplier    
  end

end

darren = Manager.new("Darren", "TA Manager", 78000)

shawna = Employee.new("Shawna", "TA", 12000, darren)
david = Employee.new("David", "TA", 10000, darren)
puts

puts

p darren.bonus(4)
p david.bonus(3)