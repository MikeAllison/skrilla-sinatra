class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.date :date
      t.decimal :amount, precision: 10, scale: 2
      t.integer :account_id
      t.integer :merchant_id
    end
  end
end
