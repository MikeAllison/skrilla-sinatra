class Bill < ActiveRecord::Base
  has_many :bill_frequency

  validates_presence_of :description
  validates_presence_of :bill_frequency_id
end