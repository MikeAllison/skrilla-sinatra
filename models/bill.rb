class Bill < ActiveRecord::Base
  enum frequency: [:once, :weekly, :bi_weekly, :monthly, :yearly]

  validates_presence_of :description
  validates_presence_of :frequency
end