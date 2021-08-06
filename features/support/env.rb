require 'cucumber'
require 'httparty'
require 'report_builder'
require 'rspec'
require 'rubocop'
require 'yaml'
require 'pry'
require_relative 'pagina_objetos'
require_relative 'carregar_arquivo'

World(PaginaObjetos)
World(CarregarArquivo)