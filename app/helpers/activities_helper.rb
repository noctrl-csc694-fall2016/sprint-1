module ActivitiesHelper
  
  def progress(activity)
    gifts = Gift.all
    sum = 0.0
    gifts.each do |g|
      sum+=g.amount if g.activity_id == activity.id
    end
    return (sum/activity.goal).round(4)*100
  end
  
end
