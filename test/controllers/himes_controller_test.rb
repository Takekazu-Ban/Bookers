require 'test_helper'

class HimesControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get himes_top_url
    assert_response :success
  end

end
