class Employee

    attr_reader :name, :title, :salary, :boss

    def initialize(name,title,salary,boss=nil)
      @name = name 
      @title = title 
      @salary = salary
      @boss = boss
      has_boss(boss)
    end

    def bonus(multiplier)
      bonus = self.salary * multiplier
    end

    def has_boss(boss)
      if !self.boss.nil?
        boss.employees << self
      end
    end

end