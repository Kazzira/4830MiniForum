class Post < ActiveRecord::Base
	validates :body, presence: true, length: { minimum: 1 }
	belongs_to :topic
end
