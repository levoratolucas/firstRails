require "application_system_test_case"

class EquipeComposersTest < ApplicationSystemTestCase
  setup do
    @equipe_composer = equipe_composers(:one)
  end

  test "visiting the index" do
    visit equipe_composers_url
    assert_selector "h1", text: "Equipe composers"
  end

  test "should create equipe composer" do
    visit equipe_composers_url
    click_on "New equipe composer"

    fill_in "Name", with: @equipe_composer.name
    click_on "Create Equipe composer"

    assert_text "Equipe composer was successfully created"
    click_on "Back"
  end

  test "should update Equipe composer" do
    visit equipe_composer_url(@equipe_composer)
    click_on "Edit this equipe composer", match: :first

    fill_in "Name", with: @equipe_composer.name
    click_on "Update Equipe composer"

    assert_text "Equipe composer was successfully updated"
    click_on "Back"
  end

  test "should destroy Equipe composer" do
    visit equipe_composer_url(@equipe_composer)
    click_on "Destroy this equipe composer", match: :first

    assert_text "Equipe composer was successfully destroyed"
  end
end
