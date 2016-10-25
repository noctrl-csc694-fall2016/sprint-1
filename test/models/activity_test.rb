require 'test_helper'

class ActivityTest < ActiveSupport::TestCase
  
  def setup
    @activity = Activity.new(id: 777, name: "Test Activity", 
    start_date: "2016-10-01", end_date: "2016-10-25", goal: 500, 
    description: "Pancake Fundraiser", notes: "Troop 401 will host", 
    created_at: "2016-05-23", updated_at: "2016-08-31")
  end

  
  test "valid activity" do 
    assert @activity.valid?
  end
  
end