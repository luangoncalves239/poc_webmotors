require_relative "#{Dir.pwd}/features/support/carregar_arquivo.rb"

class ClasseComum
  include CarregarArquivo

  def construir_url(url)
    url_base = buscar_url['url']['url_base']
    url_parametro = buscar_url['parametros'][url]
    url_base + url_parametro
  end

  def construir_envio(url_busca)
    HTTParty.get(url_busca)
  end
end
