require "test_helper"

class DeletedControllerTest < ActionDispatch::IntegrationTest
  test "should get files" do
    get deleted_files_url
    assert_response :success
  end

  test "should get index" do
    get deleted_index_url
    assert_response :success
  end
end
