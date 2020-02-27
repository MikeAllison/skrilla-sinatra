class Transaction < ActiveRecord::Base
  belongs_to :account
  belongs_to :category
  belongs_to :merchant

  validates_presence_of :merchant_id
  validates_presence_of :date
  validates_presence_of :amount
  validates_numericality_of :amount
  validates_inclusion_of :credit, in: [true, false]
  validates_presence_of :account_id

  def credit?
    self.credit ? true : false
  end

  def debit?
    self.credit ? false : true
  end
end
