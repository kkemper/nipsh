require 'test_helper'

class MDSReportsControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end

end
