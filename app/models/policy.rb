class Policy < ActiveRecord::Base
  belongs_to :deductibles
  belongs_to :limits
  belongs_to :premia
  belongs_to :submission
  belongs_to :proposal
end
