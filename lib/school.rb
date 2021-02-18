# code here!
require 'pry'
class School
    attr_reader :name
    def initialize(name)
        @name = name
        @roster = {}
    end

    def roster
      @roster
    end

     def roster=(roster)
        @roster = roster
     end

    def add_student(student, grade)
        if @roster.key?(grade)
            @roster[grade] << (student)
        else
            @roster[grade]= []
            @roster[grade] << student
        end
        #
    end

    def grade(grade)
        @roster[grade]
    end
    
    def sort
        @roster.each do |key, value|
            value.sort!
            end
        #binding.pry
    end
end