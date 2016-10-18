class Gift < ApplicationRecord
  belongs_to :donor
  belongs_to :activity
  default_scope -> {order(created_at: :desc)}
  validates :donation_date, presence: true
  validates :amount, presence: true, :numericality => {:greater_than_or_equal_to => 0}
  
  def self.import(file)
    #CSV.foreach(file.path, headers: true) do |row|

    #  gift_hash = row.to_hash 
    #  gift = Gift.where(id: gift_hash["id"])

    #  if gift.count == 1
    #    gift.first.update_attributes(gift_hash)
    #  else
    #    Gift.create!(gift_hash)
    #  end # end if !product.nil?
    #end # end CSV.foreach
  end # end self.import(file)
end
