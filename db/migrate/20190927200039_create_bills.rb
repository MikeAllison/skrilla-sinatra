class CreateBills < ActiveRecord::Migration
  def change
    create_table :bills do |t|
      t.string :description
      t.integer :bill_frequency_id
    end
  end
end
