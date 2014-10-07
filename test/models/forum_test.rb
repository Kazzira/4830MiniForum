require 'test_helper'

class ForumTest < ActiveSupport::TestCase
  test "Should not save without title" do
  	forum = Forum.new
  	assert_not forum.save
  end

  test "Should save without description" do
  	forum = Forum.new(title: "dsg")
  	assert forum.save
  end
end
