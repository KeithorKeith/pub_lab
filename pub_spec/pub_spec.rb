require('minitest/autorun')
require('minitest/reporters')
require_relative('../pub.rb')
require_relative('../drink.rb')
require_relative('../customer.rb')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class PubTest < MiniTest::Test

  def setup()
    @pub = Pub.new("Winchester")
    @drink_1 = Drink.new("Vodka", 10)
    @drink_2 = Drink.new("Gin", 10)
    @drink_3 = Drink.new("Rum", 10)
    @customer = Customer.new("John", 100, "30")
  end
    
  def test_pub_can_sell_drink()
    @pub.sell_drink(@drink_1)
    assert_equal(10, @pub.till())
  end


end
