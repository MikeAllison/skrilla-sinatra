class Account < ActiveRecord::Base
  has_many :transactions

  validates_presence_of :name
  validates :name, uniqueness: true

  before_create do
    self.name.strip!
    self.url_safe_name = self.name.strip.gsub(/\s/, '-').downcase!
  end

  def balance
    total = 0
    Transaction.where(account_id: self.id).each do |t|
      total += t.amount
    end
    total
  end
end
