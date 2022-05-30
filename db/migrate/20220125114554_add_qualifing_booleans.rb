class AddQualifingBooleans < ActiveRecord::Migration[7.0]
  def change
    add_column :leads, :kind, :integer, default: 0
    add_column :leads, :qualify_business_duration, :boolean, default: true
    add_column :leads, :qualify_monthly_revenue, :boolean, default: true
    add_index :leads, :kind
  end
end
