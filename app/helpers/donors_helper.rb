module DonorsHelper
  
  def gift_count_per_donor(donor)
    gifts = Gift.all
    count = 0
    gifts.each do |g|
      count+=1 if g.donor_id == donor.id
    end
    return count
  end
  
  def gift_total_amount_per_donor(donor)
    gifts = Gift.all
    @sum = 0
    gifts.each do |g|
      @sum+=g.amount if g.donor_id == donor.id
    end
    return @sum
  end
  
  def last_activity(donor)
    gifts = Gift.all
    gift = nil
    gifts.each do |g|
      if g.donor_id == donor.id
        if gift.nil?
          gift = g
        else
          if g.created_at > gift.created_at
            gift = g
          end
        end
      end
    end 
    if gift.nil?
      return
    else
      return Activity.find(gift.activity_id).name
    end
  end
  
  def last_gift(donor)
    gifts = Gift.all
    gift = nil
    gifts.each do |g|
      if g.donor_id == donor.id
        if gift.nil?
          gift = g
        else
          if g.created_at > gift.created_at
            gift = g
          end
        end
      end
    end 
    if gift.nil?
      return 0
    else
      return gift.amount
    end
  end
end