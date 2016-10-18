class Activity < ApplicationRecord
  has_many :gifts, dependent: :destroy
  default_scope -> {order(created_at: :desc)}
  validates :name, presence: true, length: {maximum:255}
  validates :description, presence: true, length: {maximum:255}
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :goal, presence: true, :numericality => {:greater_than_or_equal_to => 0}
end
