class User
   attr_accessor :name, :age 
   attr_reader :hometown
   
    def initialize(name, age, hometown)
       @name = name
       @age = age
       @hometown = hometown
    end   
    
end    