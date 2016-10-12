require 'test_helper'

class GiftsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get gifts_new_url
    assert_response :success
  end

  test "should get edit" do
    get gifts_edit_url
    assert_response :success
  end

end
