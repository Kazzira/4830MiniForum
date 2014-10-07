class Forum < ActiveRecord::Base
  validates :title, presence: true, length: { minimum: 1 }
  has_many :topics
end
