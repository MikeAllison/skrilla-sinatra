class CreateBillOccurences < ActiveRecord::Migration
  def change
    create_table :bill_occurrences do |t|
      t.date :date
      t.decimal :amount, precision: 10, scale: 2
      t.boolean :credit
    end
  end
end
