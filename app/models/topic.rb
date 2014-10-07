class Topic < ActiveRecord::Base
  validates :title, presence: true, length: {minimum: 1}
  belongs_to :forum
  has_many :posts
end
