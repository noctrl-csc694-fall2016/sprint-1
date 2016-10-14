require 'test_helper'

class DonorsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get donors_new_url
    assert_response :success
  end

  test "should get edit" do
    get donors_edit_url
    assert_response :success
  end

end
