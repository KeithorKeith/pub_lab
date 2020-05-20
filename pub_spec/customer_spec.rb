require('minitest/autorun')
require('minitest/reporters')
require_relative('../customer.rb')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class CustomerTest < MiniTest::Test

  def setup()
    @customer = Customer.new("Keith", 100, "30")
  end
    


end
