require 'test_helper'

class ArtifactTypeTemplatesControllerTest < ActionController::TestCase
  setup do
    @artifact_type_template = artifact_type_templates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:artifact_type_templates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create artifact_type_template" do
    assert_difference('ArtifactTypeTemplate.count') do
      post :create, artifact_type_template: { description: @artifact_type_template.description, name: @artifact_type_template.name, price: @artifact_type_template.price }
    end

    assert_redirected_to artifact_type_template_path(assigns(:artifact_type_template))
  end

  test "should show artifact_type_template" do
    get :show, id: @artifact_type_template
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @artifact_type_template
    assert_response :success
  end

  test "should update artifact_type_template" do
    put :update, id: @artifact_type_template, artifact_type_template: { description: @artifact_type_template.description, name: @artifact_type_template.name, price: @artifact_type_template.price }
    assert_redirected_to artifact_type_template_path(assigns(:artifact_type_template))
  end

  test "should destroy artifact_type_template" do
    assert_difference('ArtifactTypeTemplate.count', -1) do
      delete :destroy, id: @artifact_type_template
    end

    assert_redirected_to artifact_type_templates_path
  end
end
