require 'test_helper'

class ResidentialControllerTest < ActionDispatch::IntegrationTest
  test "should get residentialpage" do
    get residential_residentialpage_url
    assert_response :success
  end

end
