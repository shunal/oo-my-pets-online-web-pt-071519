require "pry"
class Owner
  
  attr_reader :name, :species
  
  @@all = []
  
  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
  end 
  
  def say_species
    "I am a #{species}."
  end
  
  def self.all 
    @@all
  end 
  
  def self.count
    @@all.count
  end
  
  def self.reset_all
    @@all.clear
  end
  
  def cats
    Cat.all.select do |cat|
      cat.owner == self
    end
  end
    
  def dogs 
    Dog.all.select do |dog|
      dog.owner == self
    end
  end 
  
  def buy_cat(name)
    Cat.new(name, self)
  end
  
  def buy_dog(name)
    Dog.new(name, self)
  end
  
  def walk_dogs
    self.dogs.each do |dog|
      dog.mood = "happy"
    end
    end
  
  def feed_cats
    self.cats.each do |cat|
      cat.mood = "happy"
    end
  end 
  
  def sell_pets
    self.cats.each do |cat|
      cat.mood = "nervous"
      cat.owner = nil
    end
    self.dogs.each do |dog|
      dog.mood = "nervous"
      dog.owner = nil
    end
  end 
  
  def list_pets
    cats = self.cats.count
    dogs = self.dogs.count
    "I have #{dogs} dog(s), and #{cats} cat(s)."
  end
  
  
  # expect(@owner.list_pets).to eq("I have #{@owner.dogs.count} dog(s), and #{@owner.cats.count} cat(s).")
  
end