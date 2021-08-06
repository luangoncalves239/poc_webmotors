Dado(/^que eu consulte o contrato make de marcas$/) do
    @retorno = online_challenge.consulta_make
end

Entao(/^deve retorna com o valor "([^"]*)" disponivel$/) do |valor_esperado|
  expect(@retorno.code).to eql(200)
  retorno = online_challenge.localizar_modelo_marca(@retorno, valor_esperado)
end

Quando(/^consultar o contrato model com a marca "([^"]*)"$/) do |marca_esperado|
  id_marca = online_challenge.localizar_modelo_marca(@retorno, marca_esperado)
  @retorno = online_challenge.consulta_por_id('model', id_marca)
end

Quando(/^consulta as versoes disponiveis do modelo "([^"]*)"$/) do |modelo|
  id_model = online_challenge.localizar_modelo_marca(@retorno, modelo)
  @retorno = online_challenge.consulta_por_id('version', id_model)
end