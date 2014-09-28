include PostsHelper

class PostsController < ApplicationController
  def show
  	
  end
  def new
  	@post = Post.new
  end

  def create
  	@post = Post.new(user: params["user"], body: convert(params["body"]), topic: Topic.find(params["topic"].to_i))
  	@post.save

  	redirect_to topic_path(params["topic"])
  end
end
