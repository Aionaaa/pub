require('minitest/autorun')
require('minitest/rg')
require_relative('../Pub.rb')
require_relative('../Customer.rb')
require_relative('../Drinks.rb')

class TestPub < Minitest::Test
  def setup
    @customer = Customer.new("Mickey Mouse", 50, 90, 0)
    @customer2 = Customer.new("Stitch", 100, 5, 0)
    @drink1 = Drinks.new("Beer", 7, 1)
    @drink2 = Drinks.new("Cocktail", 9, 4)
    @drink3 = Drinks.new("Vodka", 3, 5)
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

  def test_sell_drink()
    @pub.sell_drink(@drink1)
    assert_equal(107, @pub.till)
  end

  def test_sell_drink_customer_buy_drink()
    @pub.sell_drink(@drink1)
    @customer.buy_drink(@drink1)
    assert_equal(107, @pub.till)
    assert_equal(43, @customer.wallet)
  end

  def test_customer_check_age()
    assert_equal(true, @pub.customer_check_age(@customer))
  end

  def test_serve_customer()
    assert_equal(true, @pub.customer_check_age(@customer))
    @pub.sell_drink(@drink1)
    @customer.buy_drink(@drink1)
    assert_equal(107, @pub.till)
    assert_equal(43, @customer.wallet)
  end

  def test_underage_customer()
    assert_equal("Get out of my pub!", @pub.customer_check_age(@customer2))
  end

  def test_kick_customer_out()
    @customer.buy_drink(@drink3)
    @customer.get_drunk(@drink3)
    @customer.buy_drink(@drink3)
    @customer.get_drunk(@drink3)
    @customer.buy_drink(@drink3)
    @customer.get_drunk(@drink3)
    assert_equal("Get out, you're drunk!", @pub.kick_customer_out(@customer))
  end



end
