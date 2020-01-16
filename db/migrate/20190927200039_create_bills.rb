class CreateBills < ActiveRecord::Migration
  def change
    create_table :bills do |t|
      t.string :description
      t.integer :merchant_id
      t.string :frequency
      t.date :starting_date
      t.date :ending_date
      t.decimal :amount, precision: 10, scale: 2
      t.boolean :credit
      t.integer :account_id
    end
  end
end