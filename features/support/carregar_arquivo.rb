# Modulo para carregar arquivos de massa e url
module CarregarArquivo
  def buscar_url
    YAML.load_file("#{Dir.pwd}/features/support/config/#{ENV['ENVIRONMENT_TYPE']}.yml")
  end
end
