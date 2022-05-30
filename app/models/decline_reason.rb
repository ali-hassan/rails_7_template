class DeclineReason < ApplicationRecord
  validates :title, presence: true, uniqueness: true
  enum role_type: ['concierge', 'vip']
end
