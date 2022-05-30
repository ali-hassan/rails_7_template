class CreateBusinessInfos < ActiveRecord::Migration[7.0]
  def change
    create_table :business_infos do |t|
      t.references :user, index: true
      t.references :monthly_revenue, index: true
      t.references :estimated_credit_score, index: true
      t.string :legal_name
      t.string :dba
      t.string :phone
      t.string :email
      t.string :ein
      t.string :address
      t.integer :type_of_entity
      t.integer :share
      t.boolean :is_home_based
      t.boolean :is_rented
      t.boolean :open_fo_bankruptcy, default: false
      t.string :bankruptcy_reason

      t.timestamps
    end
  end
end
