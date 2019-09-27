class Transaction < ActiveRecord::Base
  belongs_to :account
  belongs_to :merchant # ???

  validates_presence_of :date
  validates_presence_of :amount
  validates_presence_of :account_id
  validates_presence_of :merchant_id
end
