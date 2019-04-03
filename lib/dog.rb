class Dog
  attr_accessor :name #Macro, setting setter and getter
  #def name
    # @name
  #end
  @@all = [] # setting class variable to empty array

  def initialize(name)
    @name = name #initialize any name
    @@all << self # pushing class into class variable
  end

  def self.all #calls everyhting in the class
    @@all.each do |dog| #by iterating through dog
      puts dog.name #prints dog names
    end
  end

  def self.clear_all #calls class
    @@all.clear #clears everything in array
  end
end

#getter = method
#setter = changing something in the getter
