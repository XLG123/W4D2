require_relative "employee"

class Manager < Employee

  attr_reader :employees

  def initialize(name, title, salary, boss=nil)
    super
    @employees = []
  end

  def total_sub_salary
    total_salary = 0
    employees.each do |employee|
      if employee.is_a?(Manager)
      total_salary += employee.salary + employee.total_sub_salary
      else
        total_salary += employee.salary
      end
    end
    total_salary   
  end

  def bonus(multiplier)
    self.total_sub_salary * multiplier
  end

end


ned = Manager.new("ned","ceo",1000000)
darren = Manager.new("Darren", "TA Manager", 78000, ned)

shawna = Employee.new("Shawna", "TA", 12000, darren)
david = Employee.new("David", "TA", 10000, darren)
puts

puts

p ned.bonus(5)
p darren.bonus(4)
p david.bonus(3)