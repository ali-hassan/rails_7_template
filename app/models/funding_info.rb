class FundingInfo < ApplicationRecord
  include Info
  STEPS = %w(funding cash_advance upload_docs)  
  enum step: STEPS

  validates_with FundingDetailValidator

  belongs_to :user
  belongs_to :purpose, optional: true
  belongs_to :request_amount, class_name: 'RevenueRange', optional: true
  has_many :credit_infos, dependent: :destroy

  accepts_nested_attributes_for :credit_infos, reject_if: :all_blank, allow_destroy: true

  STEPS.each do |stepper|
    define_method("is_#{stepper}?") do
      self.step == stepper
    end
  end

end
