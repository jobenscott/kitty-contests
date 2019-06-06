require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get onlyAMother" do
    get home_onlyAMother_url
    assert_response :success
  end

end
