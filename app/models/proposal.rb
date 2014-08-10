class Proposal < ActiveRecord::Base
  belongs_to :submission
  belongs_to :policy
end
