require 'test_helper'

class SchoolsControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get schools_home_url
    assert_response :success
  end

end
