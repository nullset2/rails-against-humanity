require 'test_helper'

class OmniauthCallbacksControllerTest < ActionDispatch::IntegrationTest
  test "should get google_oauth2" do
    get omniauth_callbacks_google_oauth2_url
    assert_response :success
  end

  test "should get facebook" do
    get omniauth_callbacks_facebook_url
    assert_response :success
  end

  test "should get twitter" do
    get omniauth_callbacks_twitter_url
    assert_response :success
  end

end
