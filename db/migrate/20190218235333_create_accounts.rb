class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :name
      t.string :url_safe_name
      t.decimal :starting_balance, precision: 10, scale: 2, default: 0.00
    end
  end
end
