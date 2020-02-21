class Bill < ActiveRecord::Base
  belongs_to :account
  belongs_to :merchant
  has_many :bill_occurrences

  enum frequency: { once: 'once', daily: 'daily', weekly: 'weekly', bi_weekly: 'bi_weekly', monthly: 'monthly', yearly: 'yearly'}

  after_save :create_bill_occurrences

  validates_presence_of :description
  validates_presence_of :merchant_id
  validates_presence_of :frequency
  validates_presence_of :starting_date
  validates_presence_of :amount
  validates_numericality_of :amount
  validates_inclusion_of :credit, in: [true, false]
  validates_presence_of :account_id

  def create_bill_occurrences
    2.times do
      BillOccurrence.create(posting_date: starting_date, amount: amount, credit: credit)
    end
  end
end
