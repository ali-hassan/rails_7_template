class CreateDeclineReasons < ActiveRecord::Migration[7.0]
  def change
    create_table :decline_reasons do |t|
      t.string :title
      t.integer :role_type, default: 1
      t.boolean :active, default: false

      t.timestamps
    end
  end
end
