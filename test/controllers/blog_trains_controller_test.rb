require 'test_helper'

class BlogTrainsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get blog_trains_new_url
    assert_response :success
  end

  test "should get edit" do
    get blog_trains_edit_url
    assert_response :success
  end

  test "should get index" do
    get blog_trains_index_url
    assert_response :success
  end

  test "should get destroy" do
    get blog_trains_destroy_url
    assert_response :success
  end

end
