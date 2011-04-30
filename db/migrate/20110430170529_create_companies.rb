class CreateCompanies < ActiveRecord::Migration
  def self.up
    create_table :companies do |t|
      t.string :name
      t.integer :founded
      t.string  :address
      t.string  :phone
      t.string  :ceo
      t.string  :cfo
      t.string  :president
      t.string  :website
      t.integer :headcount

      t.timestamps
    end
  end

  def self.down
    drop_table :companies
  end
end
