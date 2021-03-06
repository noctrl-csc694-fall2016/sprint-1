class Activity < ApplicationRecord
  #----------------------------------#
  # Activities Model Definition
  # original written by: Andy W, Oct 13 2016
  # major contributions by:
  #             Wei H, Oct 15 2016
  #             Pat M, Oct 17 2016
  #----------------------------------#
  has_many :gifts, dependent: :destroy
  default_scope -> {order(created_at: :desc)}
  validates :name, presence: true, length: {maximum:255}
  validates :description, presence: true, length: {maximum:255}
  validates :goal, presence: true, :numericality => {:greater_than_or_equal_to => 0}
  
  def self.import(file)
    #CSV.foreach(file.path, headers: true) do |row|
    #  activity_hash = row.to_hash
    #  activity = Activity.where(id: activity_hash["id"])
    #  if activity.count == 1
    #    activity.first.update_attributes(activity_hash)
    #  else
    #    Activity.create!(activity_hash)
    #  end # end if !activity.nil?
    #end # end CSV.foreach
  end # end self.import(file)
end
