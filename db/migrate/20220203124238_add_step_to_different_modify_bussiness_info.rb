class AddStepToDifferentModifyBussinessInfo < ActiveRecord::Migration[7.0]
  def change
    remove_column :business_infos, :share, :string
    remove_column :funding_infos, :purpose, :string  
    add_column :business_infos, :step, :integer, default: 0
    add_column :funding_infos, :step, :integer, default: 0 
    add_column :business_infos, :ownership_id, :integer
    add_column :funding_infos, :purpose_id, :integer
  end
end
