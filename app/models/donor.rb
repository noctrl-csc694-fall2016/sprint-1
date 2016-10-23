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
  require 'csv'
  
  # Export Donors
  # outputs all donors as a csv file(all attributes included).
  def self.as_csv
    CSV.generate do |csv|
    csv << column_names
    all.each do |item|
      csv << item.attributes.values_at(*column_names)
      end
    end
  end
  
  # Import Donors
  # Takes csv file and by row seeks to update or add in donor(s).
  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      donor_hash = row.to_hash # exclude the price field
      donor = Donor.where(id: donor_hash["id"])

      if donor.count == 1
        donor.first.update_attributes(donor_hash)
      else
        Donor.create!(donor_hash)
      end # end if else
    end # end foreach
  end
  
end
