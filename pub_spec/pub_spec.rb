require('minitest/autorun')
require('minitest/reporters')
require_relative('../pub.rb')
require_relative('../drink.rb')
require_relative('../customer.rb')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class PubTest < MiniTest::Test

  def setup()
    @pub = Pub.new("Winchester")
    @drink_1 = Drink.new("Vodka", 10, 7)
    @drink_2 = Drink.new("Gin", 10, 7)
    @drink_3 = Drink.new("Rum", 10, 7)
    @customer_1 = Customer.new("John", 100, 30)
    @customer_2 = Customer.new("Brian", 30, 17)
  end
    
  def test_pub_can_sell_drink__above_18()
    @pub.sell_drink(@drink_1, @customer_1)
    assert_equal(10, @pub.till())
  end

  def test_pub_can_sell_drink__under_18()
    assert_equal("Get out!", @pub.sell_drink(@drink_2, @customer_2))
  end

  def test_check_age_of_customer()
    @pub.check_age_of_customer(@customer_1)
    assert_equal(30, @customer_1.age())
  end

  def test_can_sell_if_alcohol_level_low_enough()
    @pub.sell_drink(@drink_1, @customer_1)
    assert_equal(0, @customer_1.drunk_level())
  end

  def test_check_alcohol_level_too_high
    @customer_1.buy_drink(@drink_1)
    assert_equal("Get out!", @pub.sell_drink(@drink_1, @customer_1))
  end
end
