require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
  	@user = User.new(email: "user@example.com", name: "Example User", organization: "Company Name, LLC", research_synopsis: "In viverra felis vitae elit pharetra ornare. Cras facilisis laoreet lacus, vitae ullamcorper urna porttitor et. Nunc aliquet odio et erat blandit pharetra. Nam id eros ipsum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque dictum justo id placerat commodo. Phasellus odio diam, ultrices at diam non, scelerisque bibendum eros. Nulla viverra mi vitae condimentum efficitur. Donec nulla risus, lobortis sit amet neque venenatis, feugiat vehicula arcu. Proin pulvinar metus at luctus mattis. Sed rhoncus, ex at pellentesque mattis, nulla eros ornare massa, vel varius lectus lacus eu urna. Quisque auctor at elit vitae cursus. Etiam et dui euismod, dapibus nibh sit amet, faucibus massa. Morbi vehicula ornare arcu sit amet porta. Proin pharetra maximus luctus. Suspendisse potenti. Sed venenatis malesuada lectus. Aliquam interdum at felis quis convallis. Praesent venenatis id nunc quis vestibulum. Duis ornare pretium mi quis condimentum. Mauris auctor eros quis imperdiet ultrices. Pellentesque eget varius ipsum, nec hendrerit justo. Maecenas finibus nisl sem, sit amet commodo metus elementum ut. Integer ac diam euismod, cursus nisl nec, porta ex. Nunc rutrum interdum blandit.")
  end

  test "should be valid" do
  	assert @user.valid?  	
  end

  test "name should be present" do
  	@user.name = "      "
  	assert_not @user.valid?
  end

    test "email should be present" do
  	@user.email = "      "
  	assert_not @user.valid?
  end


    test "organization should be present" do
  	@user.organization = "      "
  	assert_not @user.valid?
  end


    test "synopsis should be present" do
  	@user.research_synopsis = "      "
  	assert_not @user.valid?
  end

  test "password should be present" do
    @user.password = "      "
    assert_not @user.valid?
  end

  test "password confirmation should be present" do
    @user.password_confirmation = "      "
    assert_not @user.valid?
  end
end
