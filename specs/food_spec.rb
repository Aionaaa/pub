require('minitest/autorun')
require('minitest/rg')
require_relative('../Pub.rb')
require_relative('../Drinks.rb')
require_relative('../Customer.rb')
require_relative('../Food.rb')

class TestFood < Minitest::Test
  def test_food_has_name()
    food = Food.new("Burger", 5, 1)
    assert_equal("Burger", food.name)
  end

  def test_food_has_price()
    food = Food.new("Burger", 5, 1)
    assert_equal(5, food.price)
  end

  def test_rejuvenation_level()
    food = Food.new("Burger", 5, 1)
    assert_equal(1, food.rejuvenation_level)
  end



end
