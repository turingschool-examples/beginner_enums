require 'minitest/autorun'
require 'minitest/pride'
require './lib/car'

class CarTest < Minitest::Test
  def test_car_class_exists
    #I know that I always want my cars to have a year and make
    navy_bean = Car.new(2010, "Nissan")
    assert_equal Car, navy_bean.class
  end

  def test_navy_bean_year_is_2010
    navy_bean = Car.new(2010, "Nissan")
    assert_equal 2010, navy_bean.year
  end

  def test_navy_bean_make_nissan

    navy_bean = Car.new(2010, "Nissan")
    assert_equal "Nissan", navy_bean.make
  end

  def test_can_make_cars_with_other_info
    other_car = Car.new(2004, "BMW")
    assert_equal 2004, other_car.year
    assert_equal "BMW", other_car.make
  end
end
