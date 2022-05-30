class CreateIndustries < ActiveRecord::Migration[7.0]
  def change
    create_table :industries do |t|
      t.string :title
      t.boolean :active, default: true
      
      t.timestamps
    end
  end
end
