class Risk < ActiveRecord::Base
  belongs_to :submission
  has_many :limits
  has_many :deductibles
  has_many :details
end
