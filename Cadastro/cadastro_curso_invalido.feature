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

      | nome            | descricao                | data_ini   | data_fim   | url_capa        | vagas | mensagem_erro                                      |
      |                 | Curso de teste           | 10/10/2025 | 20/10/2025 | http://capa.jpg | 10    | Nome do curso é obrigatório                        |
      | Nome Muito G... | Curso de teste           | 10/10/2025 | 20/10/2025 | http://capa.jpg | 10    | Limite de 100 caracteres excedido                  |
      | Teste Descrição | Texto com mais de 1000...| 10/10/2025 | 20/10/2025 | http://capa.jpg | 10    | A descrição do curso deve ter no máximo 1000 caracteres |
      | Teste Datas     | Curso de teste           |            | 20/10/2025 | http://capa.jpg | 10    | Data de início é obrigatória                       |
      | Teste Datas     | Curso de teste           | 20/10/2025 | 10/10/2025 | http://capa.jpg | 10    | A data de fim deve ser posterior à data de início  |
      | Teste URL       | Curso de teste           | 10/10/2025 | 20/10/2025 | abc123          | 10    | URL inválida                                       |
      | Teste Vagas     | Curso de teste           | 10/10/2025 | 20/10/2025 | http://capa.jpg | -6    | O número de vagas deve ser positivo                |
      | Teste Vagas     | Curso de teste           | 10/10/2025 | 20/10/2025 | http://capa.jpg | 0     | O curso deve ter ao menos 1 vaga                   |
      

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

  
