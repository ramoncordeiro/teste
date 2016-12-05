require 'test_helper'

class IventariosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @iventario = iventarios(:one)
  end

  test "should get index" do
    get iventarios_url
    assert_response :success
  end

  test "should get new" do
    get new_iventario_url
    assert_response :success
  end

  test "should create iventario" do
    assert_difference('Iventario.count') do
      post iventarios_url, params: { iventario: { agua: @iventario.agua, comida: @iventario.comida, municao: @iventario.municao, remedio: @iventario.remedio, usuario_id: @iventario.usuario_id } }
    end

    assert_redirected_to iventario_url(Iventario.last)
  end

  test "should show iventario" do
    get iventario_url(@iventario)
    assert_response :success
  end

  test "should get edit" do
    get edit_iventario_url(@iventario)
    assert_response :success
  end

  test "should update iventario" do
    patch iventario_url(@iventario), params: { iventario: { agua: @iventario.agua, comida: @iventario.comida, municao: @iventario.municao, remedio: @iventario.remedio, usuario_id: @iventario.usuario_id } }
    assert_redirected_to iventario_url(@iventario)
  end

  test "should destroy iventario" do
    assert_difference('Iventario.count', -1) do
      delete iventario_url(@iventario)
    end

    assert_redirected_to iventarios_url
  end
end
