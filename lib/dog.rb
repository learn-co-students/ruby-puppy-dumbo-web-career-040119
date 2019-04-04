class Dog
  attr_reader :name
  # Set a class variable (@@all) equal to empty array to fill with instances.
  @@all = []

  def initialize(name)
    @name = name
    # Add each instance of a dog that is created to the empty array, using self.
    @@all << self
  end

  # Create a Class variable called .all (will always be self.all)
  def self.all
    # We want to iterate over the array of all the dogs (@@all)
    # For each dog in the array, we want to output their name (dog.name)
    # If we put self.name instead it would just puts "Dog"
    @@all.each do |dog|
      puts "#{dog.name}"
    end
  end

  # We want to build another class method to reset our array (@@all).
  # To do this use the array.clear method.
  def self.clear_all
    @@all.clear
  end

end
