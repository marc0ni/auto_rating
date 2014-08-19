class Submission < ActiveRecord::Base
  belongs_to :agent
  belongs_to :account
  belongs_to :policy
  belongs_to :proposal
  has_one :risk, dependent: :destroy
  
  before_destroy :ensure_not_referenced_by_any_risk
  
  private
  
    def ensure_not_referenced_by_any_risk
      if risk.empty?
        return true
      else
        errors.add(:base, 'Risk present')
        return false
      end
    end
  
end
