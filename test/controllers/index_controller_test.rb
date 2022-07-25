require 'test_helper'

class IndexControllerTest < ActionDispatch::IntegrationTest
  test "should get preview" do
    get index_preview_url
    assert_response :success
  end

end
