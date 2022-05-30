class CreditInfo < ApplicationRecord
  belongs_to :funding_info
  belongs_to :balance_amount, class_name: 'RevenueRange', optional: true
end
