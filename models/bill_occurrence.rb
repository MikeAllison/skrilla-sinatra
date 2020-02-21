class BillOccurrence < ActiveRecord::Base
  belongs_to :bill

  validates_presence_of :posting_date
  validates_presence_of :amount
  validates_numericality_of :amount
  validates_inclusion_of :credit, in: [true, false]
end