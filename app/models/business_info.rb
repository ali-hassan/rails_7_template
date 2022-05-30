class BusinessInfo < ApplicationRecord
  include Info
  STEPS = %w(business_personal business_accounts business_property funding_info)

  validates_with AccountDetailValidator

  TYPE_OF_ENTITY = [["Sole Proprietorship", 0], ["General Partnership", 1], ["Limited Partnership", 2], ["Limited Liability Partnership", 3]]
  
  enum step: STEPS

  validates :email, format: { with: /(\A([a-z]*\s*)*\<*([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\>*\Z)/i, message: "Invalid format" }, allow_blank: true
  validates :phone ,format: { with: /\A(?:\+?\d{1,3}\s*-?)?\(?(?:\d{3})?\)?[- ]?\d{3}[- ]?\d{4}\z/, message: "Invalid format"}, allow_blank: true

  belongs_to :user
  belongs_to :monthly_revenue, class_name: 'RevenueRange', optional: true
  belongs_to :estimated_credit_score, class_name: 'RevenueRange', optional: true
  belongs_to :ownership, class_name: 'RevenueRange', optional: true

  STEPS.each do |stepper|
    define_method("is_#{stepper}?") do
      self.step == stepper
    end
  end

end
