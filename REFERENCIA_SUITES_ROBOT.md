# Referencia para suites Robot Framework

Use este modelo para criar suites em `tests/`. Adapte os recursos importados, o teardown e as etapas ao fluxo que a suite cobre.

```robotframework
Language: pt-BR
*** Settings ***
Documentation    Descricao breve da suite.
Resource    ../resources/base.resource
Resource    ../resources/pages/login_page.resource
Test Teardown    Fechar Aplicativo

*** Test Cases ***
Validar Elementos Da Tela De Login
    [Documentation]    Dado que abro o aplicativo, quando a tela inicial e exibida, entao os campos E-mail, Senha e Entrar estao visiveis.
    [Tags]    fumaça    login
    Dado Abrir Aplicativo
    Então A Tela de Login Deve Estar Visivel
```

## Convencoes

- Mantenha `Language: pt-BR` na primeira linha para usar os nomes de etapas em portugues.
- Em cada etapa, escreva o prefixo BDD e a keyword com um espaco entre eles, por exemplo `Dado Abrir Aplicativo`.
- Importe `base.resource` e somente os Page Objects usados pela suite.
- Escreva nomes de testes, documentacao e tags de forma clara e consistente com o restante do projeto.
- Use `Test Teardown` para encerrar o aplicativo mesmo quando um teste falhar.
- Organize cada caso como um fluxo observavel e chame keywords de alto nivel dos Page Objects, sem colocar seletores diretamente no teste.
