module PostsHelper
	def post_params
		params.require(:post).permit(:topic_user, :post_body)
	end

	def convert(text)
		text.gsub!(/\n/, '<br />')
		text
	end
end
