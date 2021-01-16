require_relative './dog'
require_relative './owner'

class Cat
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