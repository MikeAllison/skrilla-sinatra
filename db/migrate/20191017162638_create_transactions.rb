class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.string :merchant
      t.date :date
      t.decimal :amount, precision: 10, scale: 2
      t.integer :account_id
      t.boolean :credit
    end
  end
end
