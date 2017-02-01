require "pry"

class Dealer
  attr_reader :inventory
  def initialize
    @inventory = []
  end

  def add_inventory(car)
    @inventory << car
  end
end
