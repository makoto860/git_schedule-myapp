require "test_helper"

class Schedule9sControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get schedule9s_index_url
    assert_response :success
  end
end
