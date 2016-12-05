require 'test_helper'

class LocalizacaosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @localizacao = localizacaos(:one)
  end

  test "should get index" do
    get localizacaos_url
    assert_response :success
  end

  test "should get new" do
    get new_localizacao_url
    assert_response :success
  end

  test "should create localizacao" do
    assert_difference('Localizacao.count') do
      post localizacaos_url, params: { localizacao: { lat: @localizacao.lat, long: @localizacao.long, nome: @localizacao.nome } }
    end

    assert_redirected_to localizacao_url(Localizacao.last)
  end

  test "should show localizacao" do
    get localizacao_url(@localizacao)
    assert_response :success
  end

  test "should get edit" do
    get edit_localizacao_url(@localizacao)
    assert_response :success
  end

  test "should update localizacao" do
    patch localizacao_url(@localizacao), params: { localizacao: { lat: @localizacao.lat, long: @localizacao.long, nome: @localizacao.nome } }
    assert_redirected_to localizacao_url(@localizacao)
  end

  test "should destroy localizacao" do
    assert_difference('Localizacao.count', -1) do
      delete localizacao_url(@localizacao)
    end

    assert_redirected_to localizacaos_url
  end
end
