require('minitest/autorun')
require('minitest/reporters')
MiniTest::Reporters.use! MiniTest::Reporters::SpecReporter.new
require_relative('../customer')

class CustomerTest < MiniTest::Test

    def setup()
        @customer1 = Customer.new("Eugene", 100)
        @customer2 = Customer.new("Colin", 10)
    end

    def test_customer_name()
        assert_equal("Eugene", @customer1.name())
    end

    def test_customer_has_money()
        assert_equal(10, @customer2.wallet())
    end
end