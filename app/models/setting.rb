class Setting < ApplicationRecord
  validates :title, presence: true, uniqueness: true
  scope :fetch_by_title, -> (title) { where('title = ?', title).first }
end
