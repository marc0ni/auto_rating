class LineItem < ActiveRecord::Base
  belongs_to :risk
  belongs_to :cart
end
