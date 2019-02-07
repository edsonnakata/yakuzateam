require "application_system_test_case"

class HistoriaTest < ApplicationSystemTestCase
  setup do
    @historium = historia(:one)
  end

  test "visiting the index" do
    visit historia_url
    assert_selector "h1", text: "Historia"
  end

  test "creating a Historium" do
    visit historia_url
    click_on "New Historium"

    fill_in "Descricao", with: @historium.descricao
    fill_in "E pago", with: @historium.e_pago
    fill_in "Nome", with: @historium.nome
    fill_in "Titulo", with: @historium.titulo
    fill_in "Usuario", with: @historium.usuario
    click_on "Create Historium"

    assert_text "Historium was successfully created"
    click_on "Back"
  end

  test "updating a Historium" do
    visit historia_url
    click_on "Edit", match: :first

    fill_in "Descricao", with: @historium.descricao
    fill_in "E pago", with: @historium.e_pago
    fill_in "Nome", with: @historium.nome
    fill_in "Titulo", with: @historium.titulo
    fill_in "Usuario", with: @historium.usuario
    click_on "Update Historium"

    assert_text "Historium was successfully updated"
    click_on "Back"
  end

  test "destroying a Historium" do
    visit historia_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Historium was successfully destroyed"
  end
end
