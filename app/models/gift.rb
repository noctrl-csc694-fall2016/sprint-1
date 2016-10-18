class Gift < ApplicationRecord
  belongs_to :donor
  belongs_to :activity
  default_scope -> {order(created_at: :desc)}
  validates :donation_date, presence: true
  validates :amount, presence: true, :numericality => {:greater_than_or_equal_to => 0}
end
