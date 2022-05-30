class User < ApplicationRecord
  attr_accessor :verification_code
  after_create :bind_blank_bussiness_funding_info
  rolify

  STEPS = %w(finalize complete)
  enum step: STEPS
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable

  has_one :business_info, dependent: :destroy
  has_one :funding_info, dependent: :destroy         

  has_one_attached :first_bank_statement, dependent: :destroy
  has_one_attached :second_bank_statement, dependent: :destroy
  has_one_attached :third_bank_statement, dependent: :destroy
  has_one_attached :processing_statement, dependent: :destroy


  validates :first_name, :last_name, :phone, :email, :address, :password, presence: true, on: [:create]
  validates :first_name, format: {with: /[a-zA-Z]/}
  validates :last_name, format: {with: /[a-zA-Z]/}

  def name
    first_name + " " + last_name
  end

  def bind_blank_bussiness_funding_info
    self.create_business_info
    self.create_funding_info
  end

end
