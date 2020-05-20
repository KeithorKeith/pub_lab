require('minitest/autorun')
require('minitest/reporters')
require_relative('../customer.rb')
require_relative('../drink.rb')
require_relative('../pub.rb')
require_relative('../food.rb')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class CustomerTest < MiniTest::Test

  def setup()
    @customer = Customer.new("Keith", 100, "30")
    @drink_1 = Drink.new("Gin", 10, 7)
    @food_1 = Food.new("Chips", 10, 5)
  end

  def test_buy_drink()
    @customer.buy_drink(@drink_1)
    assert_equal(90, @customer.wallet())
  end  

  def test_alcohol_level()
    assert_equal(7, @customer.buy_drink(@drink_1))
  end

  def test_buy_food()
    @customer.buy_food(@food_1)
    assert_equal(90, @customer.wallet())
  end 

  def test_alcohol_level_go_down
    @customer.buy_drink(@drink_1)
    @customer.buy_food(@food_1)
    assert_equal(2, @customer.drunk_level())
  end

end
