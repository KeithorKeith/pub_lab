require('minitest/autorun')
require('minitest/reporters')
require_relative('../food.rb')
require_relative('../pub.rb')
require_relative('../customer.rb')
require_relative('../drink.rb')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class FoodTest < MiniTest::Test

  def setup()
    @food_1 = Food.new("Chips", 5, 10)
    @food_2 = Food.new("Burger", 11, 12)
  end

end
