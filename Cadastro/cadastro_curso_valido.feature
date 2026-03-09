# linguagem: pt
Funcionalidade: Cadastro do Curso
  Como um administrador do sistema
  Eu quero cadastrar novos cursos
  Para que os alunos possam se matricular

  Contexto: 
    Dado que o usuário está na tela de cadastro de cursos

  @sucesso @fluxo_principal
  Cenário: Cadastro de curso com dados válidos
    Quando preencho o nome do curso com "Lógica de programação"
    E preencho a descrição com "Lógica de programação ensina a organizar o 
    raciocínio para resolver problemas usando passos lógicos e estruturados. 
    Você aprende conceitos como algoritmos, variáveis, condições e loops. 
    É a base para começar a programar em qualquer linguagem de programação."
    E informo o instrutor "João Silva"
    E insiro a URL da capa "https://images.unsplash.com/photo-1498050108023-c5249f4df085"
    E informo a data de início "01/01/2026"
    E informo a data de fim "09/03/2026"
    E preencho o número de vagas com "30"
    E seleciono o tipo de curso "Presencial"
    E informo o endereco "Avenida Nova Esperança"
    E clico em "Cadastrar"
    Então o sistema deve exibir a mensagem "Curso cadastrado com sucesso"
    E o curso "Lógica de programação" deve constar na lista de cursos

@edge_case
  Cenário: Não permitir cadastro duplicado
  Dado que já existe um curso chamado "Lógica de programação"
  Quando tento cadastrar outro curso com o mesmo nome
  Então o sistema deve exibir "Curso já cadastrado"