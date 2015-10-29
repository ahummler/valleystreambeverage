require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get about" do
    get :about
    assert_response :success
  end

  test "should get products" do
    get :products
    assert_response :success
  end

  test "should get specials" do
    get :specials
    assert_response :success
  end

  test "should get contact" do
    get :contact
    assert_response :success
  end

  test "should get order" do
    get :order
    assert_response :success
  end

  test "should get FAQ" do
    get :FAQ
    assert_response :success
  end

end
