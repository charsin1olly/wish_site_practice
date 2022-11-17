require "test_helper"

class WishListsControllerTest < ActionDispatch::IntegrationTest
  test "should get title" do
    get wish_lists_title_url
    assert_response :success
  end

  test "should get content" do
    get wish_lists_content_url
    assert_response :success
  end
end
