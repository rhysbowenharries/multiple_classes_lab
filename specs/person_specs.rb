require("minitest/autorun")
require("minitest/rg")

require_relative("../person.rb")

class PersonTest < MiniTest::Test

  def setup
    @person = Person.new("John", "33")
  end





end
