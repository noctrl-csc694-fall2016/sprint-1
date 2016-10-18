class Donor < ApplicationRecord
  require 'csv'
  
  def self.as_csv 
    CSV.generate do |csv|
    csv << column_names
    all.each do |item|
      csv << item.attributes.values_at(*column_names)
      end
    end
  end
  
  def self.import(file)
    #CSV.foreach(file.path, headers: true) do |row|

    #  donor_hash = row.to_hash # exclude the price field
    #  donor = Donor.where(id: donor_hash["id"])

    #  if donor.count == 1
    #    donor.first.update_attributes(donor_hash)
    #  else
    #    Donor.create!(donor_hash)
    #  end # end if !donor.nil?
    #end # end CSV.foreach
  end # end self.import(file)
  
end
