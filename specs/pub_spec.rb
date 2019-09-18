require('minitest/autorun')
require('minitest/rg')
require_relative('../Pub.rb')
require_relative('../Customer.rb')
require_relative('../Drinks.rb')

class TestPub < Minitest::Test
  def setup
    @customer = Customer.new("Mickey Mouse", 50)
    @drink1 = Drinks.new("Beer", 7)
    @drink2 = Drinks.new("Cocktail", 9)
    @drink3 = Drinks.new("Vodka", 3)
    @pub = Pub.new("Codeclan Arms", 100, [@drink1, @drink2, @drink3])
  end

  def test_pub_has_name()
    assert_equal("Codeclan Arms", @pub.name)
  end

  def test_pub_has_money()
    assert_equal(100, @pub.till)
  end

  def test_pub_has_drinks()
    assert_equal(3, @pub.number_of_drinks)
  end


end
