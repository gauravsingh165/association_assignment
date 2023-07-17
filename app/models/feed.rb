class Feed < ApplicationRecord
  belongs_to :user
  has_many :images
  has_many :likes
  has_many :dislikes
  has_many :comments
  has_many :group_feed_approvals
end
