require 'test_helper'

class MapControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get map_new_url
    assert_response :success
  end

end
