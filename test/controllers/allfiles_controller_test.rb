require "test_helper"

class AllfilesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get allfiles_index_url
    assert_response :success
  end
end
