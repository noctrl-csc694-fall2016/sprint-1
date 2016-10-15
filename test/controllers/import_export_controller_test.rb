require 'test_helper'

class ImportExportControllerTest < ActionDispatch::IntegrationTest
  test "should get import" do
    get import_export_import_url
    assert_response :success
  end

  test "should get inkind" do
    get import_export_inkind_url
    assert_response :success
  end

  test "should get export" do
    get import_export_export_url
    assert_response :success
  end

end
