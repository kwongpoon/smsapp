require "test_helper"

class SmsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get sms_index_url
    assert_response :success
  end
end
