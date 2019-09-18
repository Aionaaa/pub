require('minitest/autorun')
require('minitest/rg')
require_relative('../Pub.rb')
require_relative('../Customer.rb')

class TestCustomer < Minitest::Test
  def setup
    @customer = Customer.new("Mickey Mouse", 50)
  end

  def test_customer_has_wallet()
    assert_equal(50, @customer.wallet)
  end

  def test_customer_has_name()
    assert_equal("Mickey Mouse", @customer.name)
  end





end
