class Merchant < ActiveRecord::Base
  has_many :bills
  has_many :transactions

  validates_presence_of :name
  validates :name, uniqueness: { case_sensitive: false }

  before_save do
    self.name.strip!
    self.url_safe_name = self.name.strip.gsub(/\s/, '-').downcase!
  end
end
