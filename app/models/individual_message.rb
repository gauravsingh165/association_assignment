class IndividualMessage < ApplicationRecord
  belongs_to :individual_conversation
  belongs_to :sender
  belongs_to :reciver
end
