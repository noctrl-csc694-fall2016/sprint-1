require 'test_helper'

class DonorsControllerTest < ActionDispatch::IntegrationTest
  test "should get all_donors" do
    get donors_path
    assert_response :success
    assert_select "title", "Surf Donors | Gift Garden"
  end
  
  test "should get new_donors" do
    get new_donor_path
    assert_response :success
    assert_select "title", "New Donor | Gift Garden"
  end

  test "should get edit" do
    get donors_edit_url
    assert_response :success
  end

end
