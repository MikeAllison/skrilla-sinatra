class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.integer :merchant_id
      t.date :date
      t.decimal :amount, precision: 10, scale: 2
      t.boolean :credit
      t.integer :account_id
    end
  end
end
