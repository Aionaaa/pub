require('minitest/autorun')
require('minitest/rg')
require_relative('../Pub.rb')
require_relative('../Customer.rb')
require_relative('../Drinks.rb')

class TestCustomer < Minitest::Test
  def setup
    @customer = Customer.new("Mickey Mouse", 50, 90, 0)
    @customer2 = Customer.new("Stitch", 100, 5, 0)
    @drink1 = Drinks.new("Beer", 7, 1)
    @drink3 = Drinks.new("Vodka", 3, 5)
  end

  def test_customer_has_wallet()
    assert_equal(50, @customer.wallet)
  end

  def test_customer_has_name()
    assert_equal("Mickey Mouse", @customer.customer_name)
  end

  def test_buy_drink()
    @customer.buy_drink(@drink1)
    assert_equal(43, @customer.wallet)
  end

  def test_customer_has_age()
    assert_equal(90, @customer.age)
  end

  def test_get_drunk()
    @customer.buy_drink(@drink3)
    @customer.get_drunk(@drink3)
    assert_equal(5, @customer.drunkenness)
  end





end
