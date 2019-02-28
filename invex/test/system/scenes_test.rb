require "application_system_test_case"

class ScenesTest < ApplicationSystemTestCase
  setup do
    @scene = scenes(:one)
  end

  test "visiting the index" do
    visit scenes_url
    assert_selector "h1", text: "Scenes"
  end

  test "creating a Scene" do
    visit scenes_url
    click_on "New Scene"

    fill_in "History", with: @scene.history_id
    fill_in "Imagem", with: @scene.imagem
    click_on "Create Scene"

    assert_text "Scene was successfully created"
    click_on "Back"
  end

  test "updating a Scene" do
    visit scenes_url
    click_on "Edit", match: :first

    fill_in "History", with: @scene.history_id
    fill_in "Imagem", with: @scene.imagem
    click_on "Update Scene"

    assert_text "Scene was successfully updated"
    click_on "Back"
  end

  test "destroying a Scene" do
    visit scenes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Scene was successfully destroyed"
  end
end
