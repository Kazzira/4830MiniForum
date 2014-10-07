require 'test_helper'

class TopicTest < ActiveSupport::TestCase
  test "Should save without user name" do
	assert Topic.new(title: "sg").save
  end

  test "Should not save without title" do
  	assert_not Topic.new.save
  end
end
