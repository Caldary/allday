require('minitest/autorun')
require('minitest/reporters')
MiniTest::Reporters.use! MiniTest::Reporters::SpecReporter.new
require_relative('../customer')
require_relative('../drink')

class CustomerTest < MiniTest::Test

    def setup()
        @customer1 = Customer.new("Eugene", 100)
        @customer2 = Customer.new("Colin", 10)
        @drink1 = Drink.new("Whisky", 20)
        @drink2 = Drink.new("Red Wine", 10)

    end

    def test_customer_name()
        assert_equal("Eugene", @customer1.name())
    end

    def test_customer_has_money()
        assert_equal(10, @customer2.wallet())
    end

    def test_customer_buys_drink()
        @customer1.has_drink(@drink1.price)
        assert_equal(1, @customer1.drink_purchased())
        assert_equal(80, @customer1.wallet())
    end
end