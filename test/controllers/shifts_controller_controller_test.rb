require 'test_helper'

class ShiftsControllerControllerTest < ActionDispatch::IntegrationTest
  test "should get sign_out" do
    get shifts_controller_sign_out_url
    assert_response :success
  end

end
