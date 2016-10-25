require 'test_helper'

class GiftsEditTest < ActionDispatch::IntegrationTest
  def setup
    @gift = gifts(:one)
    @donor = donors(:andy)
    @activity = activities(:golf)
  end

  test "unsuccessful edit" do
    get edit_gift_path(@gift)
    assert_template 'gifts/edit'
    patch gift_path(@gift), params: { gift: { donor_id:  @donor.id,
                                                activity_id: @activity.id,
                                                donation_date: "",
                                                amount: 2000.00,
                                                gift_type: "",
                                                notes: "No date or type" } }

    assert_template 'gifts/edit'
    assert_select "div.alert", true
  end
end
