class Account < ActiveRecord::Base
  has_many :transactions

  validates_presence_of :name
  validates :name, uniqueness: true
  validates_presence_of :starting_balance

  before_create do
    self.name.strip!
    self.url_safe_name = self.name.strip.gsub(/\s/, '-').downcase!
  end

  def balance
    transactions = Transaction.where(account_id: self.id)

    balance = 0

    transactions.each do |t|
      balance += t.amount if t.credit?
      balance -= t.amount if t.debit?
    end

    balance
  end
end
