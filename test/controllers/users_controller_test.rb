require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  test "should get name:string" do
    get :name:string
    assert_response :success
  end

  test "should get topic:string" do
    get :topic:string
    assert_response :success
  end

  test "should get xpos:integer" do
    get :xpos:integer
    assert_response :success
  end

  test "should get ypos:integer" do
    get :ypos:integer
    assert_response :success
  end

end
