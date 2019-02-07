require 'test_helper'

class RoteirosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @roteiro = roteiros(:one)
  end

  test "should get index" do
    get roteiros_url
    assert_response :success
  end

  test "should get new" do
    get new_roteiro_url
    assert_response :success
  end

  test "should create roteiro" do
    assert_difference('Roteiro.count') do
      post roteiros_url, params: { roteiro: { historia: @roteiro.historia, titulo: @roteiro.titulo, usuario: @roteiro.usuario } }
    end

    assert_redirected_to roteiro_url(Roteiro.last)
  end

  test "should show roteiro" do
    get roteiro_url(@roteiro)
    assert_response :success
  end

  test "should get edit" do
    get edit_roteiro_url(@roteiro)
    assert_response :success
  end

  test "should update roteiro" do
    patch roteiro_url(@roteiro), params: { roteiro: { historia: @roteiro.historia, titulo: @roteiro.titulo, usuario: @roteiro.usuario } }
    assert_redirected_to roteiro_url(@roteiro)
  end

  test "should destroy roteiro" do
    assert_difference('Roteiro.count', -1) do
      delete roteiro_url(@roteiro)
    end

    assert_redirected_to roteiros_url
  end
end
