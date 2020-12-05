require 'test_helper'

class AlcoholsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get alcohols_new_url
    assert_response :success
  end

end
