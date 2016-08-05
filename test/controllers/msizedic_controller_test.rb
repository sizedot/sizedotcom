require 'test_helper'

class MsizedicControllerTest < ActionController::TestCase
  test "should get branddic" do
    get :branddic
    assert_response :success
  end

  test "should get transfersize" do
    get :transfersize
    assert_response :success
  end

end
