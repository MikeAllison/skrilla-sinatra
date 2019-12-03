class Bill < ActiveRecord::Base
  validates_presence_of :description
  validates_presence_of :bill_frequency_id
end
