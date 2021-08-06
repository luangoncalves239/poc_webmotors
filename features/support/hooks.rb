require 'report_builder'
require 'date'
require_relative "#{Dir.pwd}/features/support/carregar_arquivo.rb"

Before do
end

After do
end

at_exit do
  time = Time.now.to_s
  ReportBuilder.configure do |config|
    config.json_path = 'relatorios/report.json'
    config.report_path = 'relatorios/cucumber_relatorio'
    config.report_types = [:html]
    config.report_title = 'Cucumber Report Builder - Testes automatizados em API'
    config.compress_images = false
    config.color = 'indigo'
    config.additional_info = { 'Project name' => 'Poc API Luan WebMotors', 'Platform' => 'API',
                               'Report generated' => time }
  end
  ReportBuilder.build_report
end