require 'test_helper'

class CardDeckControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get shuffle" do
    get :shuffle
    assert_response :success
  end

end
