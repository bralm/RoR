require 'test_helper'

class RoRControllerTest < ActionDispatch::IntegrationTest
  test "should get ro_r_items" do
    get ro_r_ro_r_items_url
    assert_response :success
  end

end
