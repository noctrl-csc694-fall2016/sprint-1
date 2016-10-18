class Donor < ApplicationRecord
  has_many :gifts, dependent: :destroy
  default_scope -> {order(created_at: :desc)}
  validates :first_name, presence: true, length: {maximum:50}
  validates :last_name, presence: true, length: {maximum:50}
  validates :address, presence: true
  validates :city, presence: true, length: {maximum:30}
  validates :state, presence: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: true
end
