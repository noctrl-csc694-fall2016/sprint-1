require 'test_helper'

class HyperSearchControllerTest < ActionDispatch::IntegrationTest

  test 'should get_hypersearch_all_path' do
    get hyper_surf_all_path
    assert_response :success
    assert_select "title", "HyperSurf | Gift Garden"
  end
  
  test "should get_hypersearch_donors_path" do
    get hyper_surf_donors_path
    assert_response :success
    assert_select "title", "Find A Donor | Gift Garden"
  end
end
