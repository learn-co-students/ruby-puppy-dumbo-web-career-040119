require 'pry'

class Dog
  attr_accessor :name

  @@all = []

   def initialize(name)
      @name = name
      @@all << self
   end

   def self.clear_all
      @@all.clear
   end


   def self.all
      @@all.map do |dog|
        #your attr_accessor is your setter and getter which contain your @name... That's why you can just put @name 
        puts dog.name
      end
   end

end
