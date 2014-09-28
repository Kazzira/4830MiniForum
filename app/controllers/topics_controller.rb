include TopicsHelper
include PostsHelper

class TopicsController < ApplicationController
	def new
		@topic = Topic.new
	end

	def create

		@topic = Topic.new(user_name: params["user_name"], title: params["title"], forum: Forum.find(params["forum"].to_i))
		@post = Post.new(user: params["user_name"], body: convert(params["body"]), topic: @topic)
		@post.save
		@topic.save
		redirect_to topic_path(@topic.id)
	end

	def show
		@topic = Topic.find(params[:id])
		@posts = @topic.posts.all
	end
end
