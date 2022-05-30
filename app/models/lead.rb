class Lead < ApplicationRecord
  KINDS = %w(contact qualified forward )
  enum kind: KINDS
  after_create :dispatch_greetings 

  scope :by_kind, -> (kind) { where("kind = ?", kind) }

  validates :first_name, :last_name, :phone, :email, presence: true
  validates :first_name, format: {with: /[a-zA-Z]/}
  validates :last_name, format: {with: /[a-zA-Z]/}
  validates :email, format: { with: /(\A([a-z]*\s*)*\<*([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\>*\Z)/i }, uniqueness: true
  validates :phone ,format: { with: /\A(?:\+?\d{1,3}\s*-?)?\(?(?:\d{3})?\)?[- ]?\d{3}[- ]?\d{4}\z/, message: "Invalid format"}

  def dispatch_greetings
    # LeadMailer.new_lead(self).deliver
  end

  KINDS.each do |kind|
    define_method("is_#{kind}?") do
      self.kind == kind
    end
  end

end
  
  