class CreateFundingInfos < ActiveRecord::Migration[7.0]
  def change
    create_table :funding_infos do |t|
      t.references :user, index: true
      t.references :request_amount, index: true
      t.string :purpose
      t.boolean :is_cash_adv
      t.string :lender_name      
      t.boolean :accept_card
      t.references :balance_amount
      t.references :estimated_monthly_cc_sales

      t.timestamps
    end
  end
end
