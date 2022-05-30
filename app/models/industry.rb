class Industry < ApplicationRecord
  validates :title, presence: true, uniqueness: true
  
end
