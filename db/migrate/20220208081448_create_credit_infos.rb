class CreateCreditInfos < ActiveRecord::Migration[7.0]
  def change
    remove_column :funding_infos, :request_amount_id, :string
    add_column :funding_infos, :request_amount_id, :integer
    remove_column :funding_infos, :lender_name, :string
    remove_column :funding_infos, :balance_amount_id, :integer
    create_table :credit_infos do |t|
      t.string :lender_name
      t.references :balance_amount, index: true
      t.references :funding_info, index: true
      t.timestamps
    end
  end
end
