module ActivitiesHelper
  
  def progress(activity)
    selected_gifts = Gift.where(:activity_id => activity)
    sum = 0.0
    selected_gifts.each do |g|
      sum+=g.amount
    end
    return (sum/activity.goal).round(4)*100 unless activity.goal == 0
    return "N/A"
  end
  
  def gift_count_per_activity(activity)
    selected_gifts = Gift.where(:activity => activity)
    selected_gifts.count
  end 
  
  def donor_count_per_activity(activity)
    selected_gifts = Gift.where(:activity_id => activity)
    selected_gifts.distinct.count(:donor_id)
  end 
end