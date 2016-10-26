require 'test_helper'

class GiftsControllerTest < ActionDispatch::IntegrationTest
  test "should get all_gifts" do
    get gifts_path
    assert_response :success
    assert_select "title", "Surf Gifts | Gift Garden"
  end
  
  test "should get new_gift" do
    get new_gift_path
    assert_response :success
    assert_select "title", "New Gift | Gift Garden"
  end

end
