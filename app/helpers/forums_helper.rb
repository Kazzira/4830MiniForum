module ForumsHelper
	def forum_params
		params.require(:forum).permit(:title, :description)
	end
end
