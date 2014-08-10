class Risk < ActiveRecord::Base
  belongs_to :submission
  belongs_to :limits
  belongs_to :deductibles
  belongs_to :details
end
