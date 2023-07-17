class Reciver < ApplicationRecord
    has_many :individual_messages
    has_many :shared_feed
    belongs_to :user
end
