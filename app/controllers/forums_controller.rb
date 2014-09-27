include ForumsHelper

class ForumsController < ApplicationController
	def index
		@forums = Forum.all
	end

	def new
		@forum = Forum.new
	end

	def create
		@forum = Forum.new(forum_params)
		@forum.save
		redirect_to '/forums'
	end
end
