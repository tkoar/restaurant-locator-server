require 'test_helper'

class AuthControllerTest < ActionDispatch::IntegrationTest
  test "should get generate" do
    get auth_generate_url
    assert_response :success
  end

  test "should get return_secure_key" do
    get auth_return_secure_key_url
    assert_response :success
  end

end
