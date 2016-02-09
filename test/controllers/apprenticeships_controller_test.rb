require 'test_helper'

class ApprenticeshipsControllerTest < ActionController::TestCase
  setup do
    @apprenticeship = apprenticeships(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:apprenticeships)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create apprenticeship" do
    assert_difference('Apprenticeship.count') do
      post :create, apprenticeship: { student_id: @apprenticeship.student_id, teacher_id: @apprenticeship.teacher_id }
    end

    assert_redirected_to apprenticeship_path(assigns(:apprenticeship))
  end

  test "should show apprenticeship" do
    get :show, id: @apprenticeship
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @apprenticeship
    assert_response :success
  end

  test "should update apprenticeship" do
    patch :update, id: @apprenticeship, apprenticeship: { student_id: @apprenticeship.student_id, teacher_id: @apprenticeship.teacher_id }
    assert_redirected_to apprenticeship_path(assigns(:apprenticeship))
  end

  test "should destroy apprenticeship" do
    assert_difference('Apprenticeship.count', -1) do
      delete :destroy, id: @apprenticeship
    end

    assert_redirected_to apprenticeships_path
  end
end
