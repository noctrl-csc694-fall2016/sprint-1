module DonorsHelper
  
  def gift_count_per_donor(donor)
    selected_gifts = Gift.where(:donor_id => donor)
    selected_gifts.count
  end
  
  def gift_total_amount_per_donor(donor)
    selected_gifts = Gift.where(:donor_id => donor)
    sum = 0
    selected_gifts.each do |g|
      sum+=g.amount
    end
    return sum
  end
  
  def find_last_gift(donor)
    selected_gifts = Gift.where(:donor_id => donor)
    last_gift = nil
    selected_gifts.each do |g|
      if last_gift.nil?
        last_gift = g
      else
        if g.created_at > last_gift.created_at
          last_gift = g
        end
      end
    end 
    return last_gift
  end
  
  def last_gift_amount(donor)
    last_gift = find_last_gift(donor)
    if last_gift.nil?
      return 0
    else
      return last_gift.amount
    end
  end
  
  def last_activity(donor)
    last_gift = find_last_gift(donor)
    if last_gift.nil?
      return
    else
      return Activity.find(last_gift.activity_id).name
    end
  end
  
end