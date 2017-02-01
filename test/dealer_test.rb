require 'minitest/autorun'
require 'minitest/pride'
require './lib/dealer'
require './lib/car'

class DealerTest < Minitest::Test
attr_reader :dealer, :navy_bean, :red_panther, :green_dragon, :pink_butterfly
  def setup
    @dealer = Dealer.new
    @navy_bean = Car.new(2010, "Nissan")
    @red_panther = Car.new(1983, "Jaguar")
    @green_dragon = Car.new(1999, "Honda")
    @pink_butterfly = Car.new(2000, "Nissan")


    dealer.add_inventory(navy_bean)
    dealer.add_inventory(red_panther)
    dealer.add_inventory(green_dragon)
    dealer.add_inventory(pink_butterfly)

  end

  def test_dealer_class_exists
    assert_equal Dealer, dealer.class
  end

  def test_dealer_has_empty_inventory_to_begin
    skip
    assert_equal [navy_bean, red_panther, green_dragon, pink_butterfly], dealer.inventory
  end

  def test_dealer_can_add_cars_to_inventory
    skip
    assert_equal 4, dealer.inventory.count
  end

  def test_dealer_can_return_all_cars_by_make_only
    skip
    assert_equal ["Nissan", "Jaguar", "Honda", "Nissan"], dealer.all_makes
  end

  def test_dealer_can_return_all_cars_by_year_only
    skip
    assert_equal [2010, 1983, 1999, 2000], car.all_years
  end

  def test_can_find_the_first_of_a_make
    skip
    assert_equal navy_bean, car.find_first("Nissan")
  end

  def test_can_find_all_of_a_make
    skip
    assert_equal [navy_bean, pink_butterfly], car.find_many("Nissan")
  end
end
