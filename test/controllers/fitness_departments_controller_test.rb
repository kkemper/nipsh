require 'test_helper'

class FitnessDepartmentsControllerTest < ActionController::TestCase
  setup do
    @fitness_department = fitness_departments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fitness_departments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fitness_department" do
    assert_difference('FitnessDepartment.count') do
      post :create, fitness_department: { fitness_dept_id: @fitness_department.fitness_dept_id, fitness_dept_name: @fitness_department.fitness_dept_name }
    end

    assert_redirected_to fitness_department_path(assigns(:fitness_department))
  end

  test "should show fitness_department" do
    get :show, id: @fitness_department
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fitness_department
    assert_response :success
  end

  test "should update fitness_department" do
    patch :update, id: @fitness_department, fitness_department: { fitness_dept_id: @fitness_department.fitness_dept_id, fitness_dept_name: @fitness_department.fitness_dept_name }
    assert_redirected_to fitness_department_path(assigns(:fitness_department))
  end

  test "should destroy fitness_department" do
    assert_difference('FitnessDepartment.count', -1) do
      delete :destroy, id: @fitness_department
    end

    assert_redirected_to fitness_departments_path
  end
end
