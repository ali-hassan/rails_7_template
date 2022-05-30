class Purpose < ApplicationRecord
  validates :title, presence: true, uniqueness: true
  has_many :funding_infos
end
