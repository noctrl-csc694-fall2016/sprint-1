class Gift < ApplicationRecord
  belongs_to :donor
  belongs_to :activity
  validates :donation_date, presence: true
  validates :amount, presence: true, :numericality => {:greater_than_or_equal_to => 0}
end
