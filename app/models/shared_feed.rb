class SharedFeed < ApplicationRecord
  belongs_to :sender
  belongs_to :reciver
  belongs_to :feed
end
