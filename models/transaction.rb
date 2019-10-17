class Transaction < ActiveRecord::Base
  belongs_to :account

  validates_presence_of :merchant
  validates_presence_of :date
  validates_presence_of :amount
  validates_presence_of :account_id
  validates_inclusion_of :credit, in: [true, false]

  def credit?
    self.credit ? true : false
  end

  def debit?
    self.credit ? false : true
  end
end
