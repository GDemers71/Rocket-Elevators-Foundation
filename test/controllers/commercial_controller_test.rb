require 'test_helper'

class CommercialControllerTest < ActionDispatch::IntegrationTest
  test "should get commercialpage" do
    get commercial_commercialpage_url
    assert_response :success
  end

end
