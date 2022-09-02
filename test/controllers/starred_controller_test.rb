require "test_helper"

class StarredControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get starred_index_url
    assert_response :success
  end
end
