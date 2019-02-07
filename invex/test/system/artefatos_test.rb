require "application_system_test_case"

class ArtefatosTest < ApplicationSystemTestCase
  setup do
    @artefato = artefatos(:one)
  end

  test "visiting the index" do
    visit artefatos_url
    assert_selector "h1", text: "Artefatos"
  end

  test "creating a Artefato" do
    visit artefatos_url
    click_on "New Artefato"

    fill_in "Coordenada", with: @artefato.coordenada
    fill_in "Descricao", with: @artefato.descricao
    fill_in "E pago", with: @artefato.e_pago
    fill_in "Historia", with: @artefato.historia
    fill_in "Titulo", with: @artefato.titulo
    fill_in "Usuario", with: @artefato.usuario
    click_on "Create Artefato"

    assert_text "Artefato was successfully created"
    click_on "Back"
  end

  test "updating a Artefato" do
    visit artefatos_url
    click_on "Edit", match: :first

    fill_in "Coordenada", with: @artefato.coordenada
    fill_in "Descricao", with: @artefato.descricao
    fill_in "E pago", with: @artefato.e_pago
    fill_in "Historia", with: @artefato.historia
    fill_in "Titulo", with: @artefato.titulo
    fill_in "Usuario", with: @artefato.usuario
    click_on "Update Artefato"

    assert_text "Artefato was successfully updated"
    click_on "Back"
  end

  test "destroying a Artefato" do
    visit artefatos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Artefato was successfully destroyed"
  end
end
