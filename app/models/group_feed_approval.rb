class GroupFeedApproval < ApplicationRecord
  belongs_to :group
  belongs_to :feed
end
