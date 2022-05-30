require "test_helper"

class FundingInfoControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get funding_info_new_url
    assert_response :success
  end
end
