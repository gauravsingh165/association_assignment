class User < ApplicationRecord
    validates :username, presence: true, uniqueness: true
    validates :email, presence:true , uniqueness:true
    validates :password,presence:true,uniqueness:true
    has_many :feeds
    has_many :likes
    has_many :dislikes
    has_many :comments
    has_many :group_memberships
    has_many :messages
end
