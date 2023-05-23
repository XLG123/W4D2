require_relative "all_employees"

class Employee
    include All_employees

    attr_reader :salary

    def initialize(name,title,salary,boss)
        @name = name 
        @title = title 
        @salary = salary
        @boss = boss
        self.add_employee
    end


    def bonus(multiplier)
        bonus = self.salary * multiplier
    end


end