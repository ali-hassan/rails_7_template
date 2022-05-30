class AccountDetailValidator < ActiveModel::Validator
  def validate(record)
    if record.step_enabled? 'business_accounts'
      record.errors.add :legal_name, "can't be blank." if record.legal_name.blank?
      record.errors.add :phone, "can't be blank." if record.phone.blank?
      record.errors.add :email, "can't be blank." if record.email.blank?
      record.errors.add :address, "can't be blank." if record.address.blank?
      record.errors.add :dba, "can't be blank." if [1, true, '1', 'true'].include?(record.is_different_dba) && record.dba.blank?
    end
    if record.step_enabled? 'business_property'
      record.errors.add :ein, "can't be blank." if record.ein.blank?
      record.errors.add :type_of_entity, "can't be blank." if record.type_of_entity.blank?
      record.errors.add :monthly_revenue_id, "please select one from above." if record.monthly_revenue_id.blank?
      record.errors.add :ownership_id, "please select one from above." if record.ownership_id.blank?
      record.errors.add :estimated_credit_score_id, "please select one from above." if record.estimated_credit_score_id.blank?
    end
  end
end