require('minitest/autorun')
require('minitest/reporters')
MiniTest::Reporters.use! MiniTest::Reporters::SpecReporter.new
require_relative('../pub')

class PubTest < MiniTest::Test

    def setup()
        @pub = Pub.new("The Red Lion", 1000)
    end

end