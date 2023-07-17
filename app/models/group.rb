class Group < ApplicationRecord
    has_many :group_memberships
    has_many :group_feed_approvals
    has_many :feeds, through: :group_feed_approvals
    has_many :conversations
    
end
