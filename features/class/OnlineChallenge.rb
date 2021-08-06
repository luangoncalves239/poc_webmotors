

require_relative "#{Dir.pwd}/features/support/carregar_arquivo.rb"
require_relative 'classe_comum'

class OnlineChallenge < ClasseComum
  include CarregarArquivo
  def consulta_make
    url_busca = construir_url('make')
    retorno = construir_envio(url_busca)
  end

  def consulta_por_id(url, model)
    url_busca = construir_url(url)
    url_busca = url_busca.gsub('{id_model}', model.to_s)
    retorno = construir_envio(url_busca)
  end

  def localizar_modelo_marca(arquivo, valor_esperado)
    posicao = 0
    arquivo.each do
      quantidade = arquivo[posicao]['Name']
      break if quantidade.include? valor_esperado

      posicao += 1
    end
    if !arquivo[posicao].nil?
      arquivo[posicao]['ID']
    else
      raise 'Valor esperado não localizado'
    end
  end
end
