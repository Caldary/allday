require('minitest/autorun')
require('minitest/reporters')
MiniTest::Reporters.use! MiniTest::Reporters::SpecReporter.new
require_relative('../pub')
require_relative('../customer')
require_relative('../drink')

class PubTest < MiniTest::Test

    def setup()
        @pub = Pub.new("The Red Lion", 1000)

        @drink3 = Drink.new("Vodka", 30)
        @drink4 = Drink.new("White Wine", 15)

        @customer3 = Customer.new("Katie", 200)
        @customer4 = Customer.new("Hannah", 30)

    end

    def test_pub_name()
        assert_equal("The Red Lion", @pub.name())
    end

    def test_till_amount()
        assert_equal(1000, @pub.till())
    end

    def test_sold_a_drink()
        @pub.sale(@drink3.price)
        assert_equal(1030, @pub.till())
    end

end

