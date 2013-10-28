require 'test_helper'

class ShowCallsTest < ActiveSupport::TestCase

  test "invalid without a uuid" do
    sc = ShowCall.new
    refute sc.valid?, "UUID is not being validated"
  end

  test "invalid without a direction" do
    sc = ShowCall.new
    refute sc.valid?, "Direction is not being validated"
  end

  test "valid with all attributes" do
  	@sc = show_calls(:one)
  	assert @sc.valid?, "Show call was not valid"
  end

  test "invalid uuid gives error message" do
  	@sc.uuid = nil
  	assert_presence(@sc, :uuid)
  end

  test "invalid direction gives error message" do
  	@sc.direction = nil
  	assert_presence(@sc, :direction)

  def test_should_successfully_import_csv
		csv_rows = <<-eos
      UUID1,direction1, created1
		  UUID2,direction2, created2
		  UUID3,direction3, created3
		    eos

		  file = Tempfile.new('new_show_calls.csv')
		  file.write(csv_rows)
		  file.rewind

		  assert_difference "ShowCall.count", 3 do
		    post :csv_import, :file => Rack::Test::UploadedFile.new(file, 'text/csv')
		  end

		  assert_redirected_to root_url
		  assert_equal "Show Calls imported.", flash[:notice]
    end
  end  	

  
end
