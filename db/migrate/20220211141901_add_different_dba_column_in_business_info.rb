class AddDifferentDbaColumnInBusinessInfo < ActiveRecord::Migration[7.0]
  def change
    add_column :business_infos, :is_different_dba, :boolean, default: false
  end
end
