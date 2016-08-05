require 'test_helper'

class MmysizeControllerTest < ActionController::TestCase
  test "should get avgsize" do
    get :avgsize
    assert_response :success
  end

  test "should get brandsize" do
    get :brandsize
    assert_response :success
  end

  test "should get inputsize" do
    get :inputsize
    assert_response :success
  end

end
