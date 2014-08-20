class Submission < ActiveRecord::Base
  belongs_to :agent
  belongs_to :account
  has_one :policy
  has_many :proposals
  belongs_to :risk
  has_many :details, through: :risks
  
end
