require 'test_helper'

class ShowCallsTest < ActiveSupport::TestCase
  test "invalid without a uuid" do
    sc = ShowCall.new
    assert !sc.valid?, "UUID is not being validated"
  end

  test "valid with all attributes" do
  	sc = show_calls(:one)
  	assert sc.valid?, "Show call was not valid"
  end

  test "invalid uuid gives error message" do
  	sc = show_calls(:one)
  	sc.uuid = nil
  	sc.valid?
  	assert_match /can't be blank/, sc.errors[:name].join,
      "Presence error not found on show call"
  end
end
