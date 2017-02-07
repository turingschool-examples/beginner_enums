require "pry"

class Dealer
  attr_reader :inventory
  def initialize
    @inventory = []
  end

  def add_inventory(car)
    @inventory << car
  end

  def all_makes
    inventory.map do |car|
      car.make
    end
  end

  def all_years
    inventory.collect do |car|
      car.year
    end
  end

  def find_first(make)
    inventory.find do |car|
      car.make == make
    end
  end

  def find_many(make)
    inventory.select do |car|
      car.make == make
    end
  end
end
