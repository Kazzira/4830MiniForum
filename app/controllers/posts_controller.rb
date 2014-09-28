include PostsHelper

class PostsController < ApplicationController
  def show
  	
  end
  def new
  	@post = Post.new
  end

  def create
  	user = params["user"]
  	body = convert(params["body"])

  	user = "Anonymous" if user.nil? || user.empty?
  	if body.nil? || body.empty?
  		redirect_to new_post_path(topic: params["topic"].to_i) if body.nil? || body.empty?
  		return
  	end
  	@post = Post.new(user: user, body: body, topic: Topic.find(params["topic"].to_i))
  	@post.save

  	redirect_to topic_path(params["topic"])
  end
end
