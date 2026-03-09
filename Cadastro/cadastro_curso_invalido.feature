# linguagem: pt
Funcionalidade: Cadastro de Cursos

  Contexto:
    Dado que o usuário está na tela de cadastro de cursos

  @negativo @validacao_completa
  Esquema do Cenário: Validar todas as regras de preenchimento do formulário
    Quando preencho o formulário com "<nome>", "<data_ini>", "<data_fim>", "<url_capa>", "<vagas>"
    E clico no botão "Cadastrar"
    Então o sistema deve exibir a mensagem "<mensagem_erro>"
    E o cadastro não deve ser realizado

    Exemplos:

      | nome           | data_ini   | data_fim   | url_capa         | vagas | mensagem_erro                                     |
      |                | 10/10/2025 | 20/10/2025 | http://capa.jpg  | 10    | Nome do curso é obrigatório                       |
      | Teste Datas    |            | 20/10/2025 | http://capa.jpg  | 10    | Data de início é obrigatória                      |
      | Teste Datas    | 20/10/2025 | 10/10/2025 | http://capa.jpg  | 10    | A data de fim deve ser posterior à data de início |
      | Teste URL      | 10/10/2025 | 20/10/2025 | abc123           | 10    | URL inválida                                      |
      | Teste Vagas    | 10/10/2025 | 20/10/2025 | http://capa.jpg  | -5    | O número de vagas deve ser positivo               |
      | Teste Vagas    | 10/10/2025 | 20/10/2025 | http://capa.jpg  | 0     | O curso deve ter ao menos 1 vaga                  |
      | Nome Muito G...| 10/10/2025 | 20/10/2025 | http://capa.jpg  | 10    | Limite de 1000 caracteres excedido                |

@regra_negocio
  Cenário: Validar campos obrigatórios por tipo de curso (Presencial)
  Quando seleciono o tipo de curso "Presencial"
  E tento salvar sem preencher o "Endereço"
  Então o sistema deve exibir "Endereço é obrigatório para cursos presenciais"

@regra_negocio
  Cenário: Validar campos obrigatórios por tipo de curso (Online)
  Quando seleciono o tipo de curso "Online"
  E tento salvar sem preencher o "Link do curso"
  Então o sistema deve exibir "Link é obrigatório para cursos online"

  
