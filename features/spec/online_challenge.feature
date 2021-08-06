# language: pt

@poc_api
Funcionalidade: Validar POC WebMotors

  @make
  Esquema do Cenário: Consulta servico make sem filtro por marca
    Dado que eu consulte o contrato make de marcas
    Entao deve retorna com o valor "<marca>" disponivel
    Exemplos:
      |marca    |
      |Chevrolet|
      |Honda    |
      |Ford     |
      |Ford_eror|

  @model
  Esquema do Cenário: Consulta servico model
    Dado que eu consulte o contrato make de marcas
    Quando consultar o contrato model com a marca <marca>
    Entao deve retorna com o valor "<modelo>" disponivel
    Exemplos:
      |marca      |modelo    |
      |Chevrolet  |Agile     |
      |Chevrolet  |Astra     |
      |Chevrolet  |Onix      |
      |Honda      |City      |
      |Honda      |CRV       |
      |Honda      |Fit       |
      |Ford       |Ecosport  |
      |Ford       |Fussion   |

  @version
  Esquema do Cenário: Consulta servico version
    Dado que eu consulte o contrato make de marcas
    Quando consultar o contrato model com a marca "<marca>"
    E consulta as versoes disponiveis do modelo "<modelo>"
    Entao deve retorna com o valor "<versao>" disponivel
    Exemplos:
      |marca      |modelo  |versao                       |
      |Chevrolet  |Agile   |1.5 DX 16V FLEX 4P AUTOMÁTICO|
      |Chevrolet  |Astra   |1.5 DX 16V FLEX 4P AUTOMÁTICO|
      |Chevrolet  |Onix    |1.5 DX 16V FLEX 4P AUTOMÁTICO|
      |Honda      |City    |1.0 MPI EL 8V FLEX 4P MANUAL |
      |Honda      |CRV     |1.5 LX 16V FLEX 4P MANUAL    |
      |Honda      |Fit     |1.5 LX 16V FLEX 4P MANUAL    |
      |Ford       |Ecosport|1.5 DX 16V FLEX 4P AUTOMÁTICO|
      |Ford       |Fussion |1.5 DX 16V FLEX 4P AUTOMÁTICO|