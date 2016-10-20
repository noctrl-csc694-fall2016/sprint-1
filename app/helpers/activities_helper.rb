module ActivitiesHelper
  
  def progress(activity)
    gifts = Gift.all
    sum = 0.0
    gifts.each do |g|
      sum+=g.amount if g.activity_id == activity.id
    end
    return (sum/activity.goal).round(4)*100 unless activity.goal == 0
    return "N/A"
  end
  
  def gift_count_per_activity(activity)
    gifts = Gift.all
    count = 0
    gifts.each do |g|
      count+=1 if g.activity_id == activity.id
    end
    return count
  end 
  
  def donor_count_per_activity(activity)
  end 
end