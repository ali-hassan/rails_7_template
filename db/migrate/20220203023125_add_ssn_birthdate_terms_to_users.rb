class AddSsnBirthdateTermsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :terms_and_conditions, :boolean, default: false
    add_column :users, :social_security_number, :string
    add_column :users, :dob, :date
  end
end
