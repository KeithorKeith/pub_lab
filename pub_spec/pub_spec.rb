require('minitest/autorun')
require('minitest/reporters')
require_relative('../pub.rb')
require_relative('../drink.rb')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class PubTest < MiniTest::Test

  def setup()
    @pub = Pub.new("Winchester")
  end
    


end
