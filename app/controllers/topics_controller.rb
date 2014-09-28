include TopicsHelper
include PostsHelper

class TopicsController < ApplicationController
	def new
		@topic = Topic.new
	end

	def create

		user = params["user_name"]
		title = params["title"]

		body = convert(params["body"])

		user = "Anonymous" if user.nil? || user.empty?
		
		if title.nil? || body.nil? || title.empty? || body.empty?
			redirect_to new_topic_path(forum: params["forum"]) 
			return
		end

		@topic = Topic.new(user_name: user, title: title, forum: Forum.find(params["forum"].to_i))
		@post = Post.new(user: user, body: body, topic: @topic)
		@post.save
		@topic.save
		redirect_to topic_path(@topic.id)
	end

	def show
		@topic = Topic.find(params[:id])
		@posts = @topic.posts.all
	end
end
