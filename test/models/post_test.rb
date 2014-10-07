require 'test_helper'

class PostTest < ActiveSupport::TestCase
   test "should save without name" do
  	  post = Post.new(body: "gsg")
  	  post.body = "gsd"
  	  assert post.save
   end

   test "Should not save without body" do
   	  post = Post.new
   	  assert_not post.save
   end
end
