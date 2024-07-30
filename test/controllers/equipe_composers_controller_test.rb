require "test_helper"

class EquipeComposersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @equipe_composer = equipe_composers(:one)
  end

  test "should get index" do
    get equipe_composers_url
    assert_response :success
  end

  test "should get new" do
    get new_equipe_composer_url
    assert_response :success
  end

  test "should create equipe_composer" do
    assert_difference("EquipeComposer.count") do
      post equipe_composers_url, params: { equipe_composer: { name: @equipe_composer.name } }
    end

    assert_redirected_to equipe_composer_url(EquipeComposer.last)
  end

  test "should show equipe_composer" do
    get equipe_composer_url(@equipe_composer)
    assert_response :success
  end

  test "should get edit" do
    get edit_equipe_composer_url(@equipe_composer)
    assert_response :success
  end

  test "should update equipe_composer" do
    patch equipe_composer_url(@equipe_composer), params: { equipe_composer: { name: @equipe_composer.name } }
    assert_redirected_to equipe_composer_url(@equipe_composer)
  end

  test "should destroy equipe_composer" do
    assert_difference("EquipeComposer.count", -1) do
      delete equipe_composer_url(@equipe_composer)
    end

    assert_redirected_to equipe_composers_url
  end
end
