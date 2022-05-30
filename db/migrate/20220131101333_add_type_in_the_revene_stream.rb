class AddTypeInTheReveneStream < ActiveRecord::Migration[7.0]
  def change
    add_column :revenue_ranges, :kind, :integer
  end
end
