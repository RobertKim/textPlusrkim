require 'test_helper'

class TextsTest < ActionDispatch::IntegrationTest
	fixtures :all

	test "Anyone can view show calls index page" do
  	get show_calls_url

  	assert_response :success
  	assert_select "h1", "Listing of Show Calls"
  end

  test "Anyone can view show call information" do
  	sc = show_calls(:one)
  	get show_call_url(sc)

  	assert_response :success
  	assert_select "h1", "Attributes of selected show call"
  end

  test "Iteration of attributes is working properly" do
  	sc = show_calls(:one)
  	get show_call_url(sc)

  	assert_response :success
  	assert_select "td", sc.uuid
  end
end
