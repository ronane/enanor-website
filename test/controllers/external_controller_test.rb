require 'test_helper'

class ExternalControllerTest < ActionController::TestCase
  test "should get music" do
    get :music
    assert_response :success
  end

  test "should get mail" do
    get :mail
    assert_response :success
  end

  test "should get torrent" do
    get :torrent
    assert_response :success
  end

  test "should get rss" do
    get :rss
    assert_response :success
  end

  test "should get map" do
    get :map
    assert_response :success
  end

end
