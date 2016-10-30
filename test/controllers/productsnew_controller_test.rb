require 'test_helper'

class ProductsnewControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get productsnew_index_url
    assert_response :success
  end

end
