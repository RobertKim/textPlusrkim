require 'test_helper'

class ShowCallHelperTest < ActionView::TestCase

	def assert_presence(model, field)
		model.valid?
		assert_match /can't be blank/, model.errors[field].join, "Presence error for #{field} not found on #{model.class}"
  end	
  
end
