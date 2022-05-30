class CreatePurposes < ActiveRecord::Migration[7.0]
  def change
    create_table :purposes do |t|
      t.string :title
      t.boolean :active, default: true
      t.integer :sort_order
      
      t.timestamps
    end
  end
end
