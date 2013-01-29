require 'test_helper'

class ClinicArtifactTypesControllerTest < ActionController::TestCase
  setup do
    @clinic_artifact_type = clinic_artifact_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:clinic_artifact_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create clinic_artifact_type" do
    assert_difference('ClinicArtifactType.count') do
      post :create, clinic_artifact_type: { clinic_id: @clinic_artifact_type.clinic_id, description: @clinic_artifact_type.description, name: @clinic_artifact_type.name, price: @clinic_artifact_type.price }
    end

    assert_redirected_to clinic_artifact_type_path(assigns(:clinic_artifact_type))
  end

  test "should show clinic_artifact_type" do
    get :show, id: @clinic_artifact_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @clinic_artifact_type
    assert_response :success
  end

  test "should update clinic_artifact_type" do
    put :update, id: @clinic_artifact_type, clinic_artifact_type: { clinic_id: @clinic_artifact_type.clinic_id, description: @clinic_artifact_type.description, name: @clinic_artifact_type.name, price: @clinic_artifact_type.price }
    assert_redirected_to clinic_artifact_type_path(assigns(:clinic_artifact_type))
  end

  test "should destroy clinic_artifact_type" do
    assert_difference('ClinicArtifactType.count', -1) do
      delete :destroy, id: @clinic_artifact_type
    end

    assert_redirected_to clinic_artifact_types_path
  end
end
