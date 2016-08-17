require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase

  def setup
    @base_title = "NIPSH Data Repository"
  end

  test "should get home" do
    get :home
    assert_response :success
    assert_select "title", "Home | #{@base_title}"
    end

  test "should get help" do
    get :help
    assert_response :success
    assert_select "title", "Help | #{@base_title}"
  end

  test "should get about" do
    get :about
    assert_response :success
    assert_select "title", "About | #{@base_title}"
  end

  test "should get contact" do
    get :contact
    assert_response :success
    assert_select "title", "Contact | #{@base_title}"
  end

  test "should get confirm access" do
    get :confirm_access
    assert_response :success
    assert_select "title", "Confirm Account | #{@base_title}"
  end

  test "should get data sources" do
    get :data_sources
    assert_response :success
    assert_select "title", "Data Sources | #{@base_title}"
  end

    test "should get queries" do
    get :queries
    assert_response :success
    assert_select "title", "Search | #{@base_title}"
  end

    test "should get results" do
    get :results
    assert_response :success
    assert_select "title", "Search Results | #{@base_title}"
  end

    test "should get submit request" do
    get :submit_request
    assert_response :success
    assert_select "title", "Request Access | #{@base_title}"
  end



end
