module TopicsHelper
	def topic_params
		params.require(:topic).permit(:topic_user, :topic_title, :forum)
	end
end
