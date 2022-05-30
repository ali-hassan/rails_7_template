class RevenueRange < ApplicationRecord

  KINDS = %w(monthly_revenue ownership estimated_credit_score requested_amount estimated_balance_amount credit_card_sales balance_amount)

  validates :title, presence: true
  validates :title, uniqueness: { scope: :kind }
  enum kind: KINDS

  scope :fetch_by_kind, -> (kind) { where(kind: kind, active: true).order(:sort_order) }

end
