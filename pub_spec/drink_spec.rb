require('minitest/autorun')
require('minitest/reporters')
require_relative('../drink.rb')
require_relative('../pub.rb')
require_relative('../customer.rb')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class DrinkTest < MiniTest::Test

  def setup()
    @drink = Drink.new("Carona", 5, 5)
  end


end
