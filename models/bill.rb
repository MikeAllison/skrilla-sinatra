class Bill < ActiveRecord::Base
  belongs_to :account
  belongs_to :merchant

  enum frequency: { once: 0, daily: 1, weekly: 2, bi_weekly: 3, monthly: 4, yearly: 5}

  validates_presence_of :description
  validates_presence_of :merchant_id
  validates_presence_of :frequency
  validates_presence_of :starting_date
  validates_presence_of :amount
  validates_numericality_of :amount
  validates_inclusion_of :credit, in: [true, false]
  validates_presence_of :account_id
end
