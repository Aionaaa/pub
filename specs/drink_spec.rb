require('minitest/autorun')
require('minitest/rg')
require_relative('../Pub.rb')
require_relative('../Drinks.rb')
require_relative('../Food.rb')

class TestDrinks < Minitest::Test

  def test_drink_has_name()
    drink = Drinks.new("Red wine", 5, 2)
    assert_equal("Red wine", drink.name)
  end

  def test_drink_has_price()
    drink = Drinks.new("Red wine", 5, 2)
    assert_equal(5, drink.price)
  end





end
