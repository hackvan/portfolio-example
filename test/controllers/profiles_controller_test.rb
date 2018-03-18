require 'test_helper'

class ProfilesControllerTest < ActionDispatch::IntegrationTest

  test "should get root" do
      get root_path
      assert_template 'profiles/index'
  end
end
