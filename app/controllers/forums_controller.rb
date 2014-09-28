include ForumsHelper

class ForumsController < ApplicationController
	def index
		@forums = Forum.all
	end

	def new
		@forum = Forum.new
	end

	def create
		title = params[:forum][:title]

		if title.nil? || title.empty?
			redirect_to new_forum_path
			return
		end
		@forum = Forum.new(forum_params)
		@forum.save
		redirect_to '/forums'
	end

	def show
		@forum = Forum.find(params[:id])
		@topics = @forum.topics.all
	end

	def destroy
		Forum.find(params[:id]).destroy

		redirect_to '/forums'
	end
end
