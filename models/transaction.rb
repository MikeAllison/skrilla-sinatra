class Transaction < ActiveRecord::Base
  belongs_to :account
  belongs_to :merchant

  validates_presence_of :date
  validates_presence_of :amount
  validates_presence_of :account_id
  validates_presence_of :merchant_id
  validates_inclusion_of :credit, in: [true, false]

  def to_currency
    if self.amount.to_s.match(/\.\d\z/)
      "$#{self.amount}0"
    else
      "$#{self.amount}"
    end
  end
end
