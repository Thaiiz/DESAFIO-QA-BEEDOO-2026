# DESAFIO-QA-BEEDOO-2026

# 📚 Testes – Aplicação de Cadastro de Cursos

## 📌 Sobre o Projeto

Este repositório contém a documentação e evidências do processo de **análise e execução de testes** de uma aplicação web de **cadastro de cursos**.

A aplicação permite o registro e gerenciamento de cursos por meio de um formulário de cadastro, onde os usuários podem inserir informações relevantes para armazenamento e consulta posterior.

O objetivo deste trabalho foi realizar uma **análise inicial da aplicação**, definir **estratégias de teste**, documentar **cenários e casos de teste**, além de registrar **bugs encontrados durante a execução**.

---

# 🔎 Análise Inicial da Aplicação

Durante a análise inicial, foi realizada uma exploração da aplicação com o objetivo de entender:

* Fluxo principal de uso do sistema
* Campos obrigatórios no cadastro de cursos
* Validações existentes nos formulários
* Comportamento esperado ao cadastrar cursos
* Possíveis cenários de erro

A aplicação apresenta como principal funcionalidade o **cadastro de cursos**, onde o usuário pode inserir informações relacionadas ao curso e submetê-las ao sistema.

A partir dessa análise exploratória, foi possível identificar os principais pontos críticos que deveriam ser cobertos pelos testes.

---

# 🧠 Raciocínio Utilizado Durante a Análise

Durante a análise da aplicação, foram considerados os seguintes aspectos:

### 1. Fluxo principal

Foi analisado o comportamento esperado quando o usuário realiza um cadastro de curso corretamente.

### 2. Validações de formulário

Foram verificados cenários como:

* Campos obrigatórios não preenchidos
* Inserção de dados inválidos
* Limites de caracteres
* Formatos incorretos

### 3. Comportamentos inesperados

Também foram testados cenários negativos, como:

* Submissão de formulário incompleto
* Reenvio de informações
* Dados inconsistentes

Essa abordagem permitiu identificar possíveis falhas de validação e problemas de usabilidade.

---

# 🧪 Decisões Tomadas para Criação dos Testes

Para estruturar os testes, foram adotadas as seguintes decisões:

* Utilização de **testes manuais exploratórios** para entender o comportamento da aplicação.
* Criação de **cenários baseados nos fluxos principais da aplicação**.
* Inclusão de **testes positivos e negativos**.
* Organização dos casos de teste em uma **planilha estruturada no Google Sheets**.

Os testes foram pensados para validar:

* Funcionalidade
* Validação de dados
* Usabilidade
* Robustez do formulário

---

# 📋 Cenários e Casos de Teste

Todos os cenários e casos de teste foram documentados em uma planilha no Google Sheets contendo:

* ID do caso de teste
* Cenário
* Descrição
* Passos para execução
* Resultado esperado
* Resultado obtido

📄 A planilha pode ser acessada aqui:

👉 [https://drive.google.com/drive/folders/1VpXp5HJv9b8pjGGWX89q0Z8veuLM1VrZ?usp=share_link](https://drive.google.com/drive/folders/1VpXp5HJv9b8pjGGWX89q0Z8veuLM1VrZ?usp=share_link)

---

# 🐞 Relatório de Bugs Encontrados

Durante a execução dos testes, foram identificados alguns bugs na aplicação. Cada bug foi documentado com as seguintes informações:

### Estrutura utilizada para registro dos bugs

**Título do Bug (Problema)**

Breve descrição do problema encontrado.

**Passos para reproduzir**

1. Acessar a página de cadastro de cursos
2. Preencher os campos obrigatórios
3. Inserir dados inválidos ou realizar determinada ação
4. Cadastrar o Curso

**Resultado esperado**

Descrever o comportamento correto esperado.

**Severidade / Impacto**

Classificação do impacto do bug:

* Baixo
* Médio
* Alto
* Crítico

---

# 📂 Evidências da Execução dos Testes

As evidências da execução dos testes (prints de tela e gravações) foram armazenadas em um diretório compartilhado no Google Drive.

Essas evidências demonstram:

* Execução dos cenários de teste
* Ocorrência dos bugs identificados
* Comportamento da aplicação durante os testes

📎 Acesse as evidências aqui:

👉 [https://drive.google.com/drive/folders/1VpXp5HJv9b8pjGGWX89q0Z8veuLM1VrZ?usp=share_link](https://drive.google.com/drive/folders/1VpXp5HJv9b8pjGGWX89q0Z8veuLM1VrZ?usp=share_link)

---

# ✅ Conclusão

A execução dos testes permitiu avaliar o comportamento da aplicação de cadastro de cursos e identificar possíveis melhorias relacionadas a:

* Validações de formulário
* Tratamento de erros
* Experiência do usuário

A documentação produzida (casos de teste, evidências e relatório de bugs) contribui para a melhoria da qualidade da aplicação e pode servir como base para futuras correções e ciclos de teste.

