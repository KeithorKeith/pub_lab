require('minitest/autorun')
require('minitest/reporters')
require_relative('../customer.rb')
require_relative('../drink.rb')
require_relative('../pub.rb')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class CustomerTest < MiniTest::Test

  def setup()
    @customer = Customer.new("Keith", 100, "30")
    @drink_1 = Drink.new("Gin", 10, 7)
  end

  def test_buy_drink()
    @customer.buy_drink(@drink_1)
    assert_equal(90, @customer.wallet())
  end  

  def test_alcohol_level()
    assert_equal(7, @customer.buy_drink(@drink_1))
  end


end
