# linguagem: pt
# Nota: Funcionalidade em desenvolvimento. Botão de Edicão ainda não implementado.

Funcionalidade: Edição de Cursos

Contexto:
Dado que existe um curso cadastrado

@gestao
  Cenário: Editar um curso já cadastrado
    Dado que existe um curso chamado "Logica de programação" cadastrado
    Quando altero o nome para "Python Avançado" e clico em "Salvar"
    Então a lista de cursos deve exibir o nome atualizado