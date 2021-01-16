require_relative './cat'
require_relative './owner'

class Dog
  @@all = []

  def self.all
    @@all
  end

  attr_accessor :owner, :mood
  attr_reader :name

  def initialize(name, owner)
    @name = name
    @owner = owner
    @mood = "nervous"
    save
  end

  def save
    @@all << self
  end
end