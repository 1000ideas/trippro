require 'test_helper'

class ContentControllerTest < ActionController::TestCase
  test "should get update" do
    get :update
    assert_response :success
  end

end
