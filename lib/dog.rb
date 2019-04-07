require 'pry'
class Dog
    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
        #binding.pry
    end

    def self.clear_all 
        @@all = []
    end

    def self.all
       @@all.map do |dogs|
        puts dogs.name
       end
    end
end