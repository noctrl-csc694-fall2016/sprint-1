require 'test_helper'

class GiftTest < ActiveSupport::TestCase

  def setup
    
    @gift = Gift.new(id: 3, activity_id: 2, donor_id: 2,
    donation_date: "2016-10-15", amount: 75.00, gift_type: "Cash", 
    notes: "")
  end

  
  test "notes should not be too long" do 
    @gift.notes = "a" * 2501
    assert_not @gift.valid?
  end

end
