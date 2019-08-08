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
    Cats.all.select do |cat|
      cat.owner == self
    end
    
  def dogs 
    Dogs.all.select do |dog|
      dog.owner == self
  end 
  end 
  
  
  
end