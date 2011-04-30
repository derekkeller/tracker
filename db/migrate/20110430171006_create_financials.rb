class CreateFinancials < ActiveRecord::Migration
  def self.up
    create_table :financials do |t|
      t.integer :revenue
      t.integer :cogs
      t.integer :sga
      t.integer :other_expense
      t.integer :other_income
      t.integer :interest_income
      t.integer :interest_expense
      t.integer :current_assets
      t.integer :other_assets
      t.integer :current_liabilties
      t.integer :other_liabilities
      t.integer :common_stock
      t.integer :retained_earnings
      t.integer :cash_in_ops
      t.integer :cash_out_ops
      t.integer :cash_investing
      t.integer :cash_financing
      t.text    :income_commentary
      t.text    :balance_commentary
      t.date    :period
      t.integer :company_id

      t.timestamps
    end
  end

  def self.down
    drop_table :financials
  end
end
