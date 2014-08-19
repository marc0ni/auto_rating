class Risk < ActiveRecord::Base
  belongs_to :submission
  belongs_to :policy
  belongs_to :proposal
  has_many :limits
  has_many :deductibles
  has_many :details
end
