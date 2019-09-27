class BillFrequencies < ActiveRecord::Migration
  def change
    create_table :bill_frequencies do |t|
      t.string :name
    end
  end
end
