class FundingDetailValidator < ActiveModel::Validator
  #validates :purpose_id, :request_amount_id, presence: true, unless: :new_record?
  def validate(record)
    if record.step_enabled? 'cash_advance'
      record.errors.add :purpose_id, "can't be blank." if record.purpose_id.blank?
      record.errors.add :request_amount_id, "can't be blank." if record.request_amount_id.blank?
    end
  end
end