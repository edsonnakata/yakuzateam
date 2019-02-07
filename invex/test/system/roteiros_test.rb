require "application_system_test_case"

class RoteirosTest < ApplicationSystemTestCase
  setup do
    @roteiro = roteiros(:one)
  end

  test "visiting the index" do
    visit roteiros_url
    assert_selector "h1", text: "Roteiros"
  end

  test "creating a Roteiro" do
    visit roteiros_url
    click_on "New Roteiro"

    fill_in "Historia", with: @roteiro.historia
    fill_in "Titulo", with: @roteiro.titulo
    fill_in "Usuario", with: @roteiro.usuario
    click_on "Create Roteiro"

    assert_text "Roteiro was successfully created"
    click_on "Back"
  end

  test "updating a Roteiro" do
    visit roteiros_url
    click_on "Edit", match: :first

    fill_in "Historia", with: @roteiro.historia
    fill_in "Titulo", with: @roteiro.titulo
    fill_in "Usuario", with: @roteiro.usuario
    click_on "Update Roteiro"

    assert_text "Roteiro was successfully updated"
    click_on "Back"
  end

  test "destroying a Roteiro" do
    visit roteiros_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Roteiro was successfully destroyed"
  end
end
