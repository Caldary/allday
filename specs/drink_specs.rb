require('minitest/autorun')
require('minitest/reporters')
MiniTest::Reporters.use! MiniTest::Reporters::SpecReporter.new
require_relative('../drink')

class DrinkTest < MiniTest::Test

    def setup()
        @drink1 = Drink.new("Whisky", 20)
        @drink2 = Drink.new("Red Wine", 10)
    end

    def test_drink_name()
        assert_equal("Whisky", @drink1.name())
    end

    def test_drink_price()
        assert_equal(10, @drink2.price())
    end

end

