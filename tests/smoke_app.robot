Language: pt-BR
*** Settings ***
Documentation    Testes de fumaça do aplicativo Lista de Tarefas.
Resource    ../resources/base.resource
Resource    ../resources/pages/login_page.resource
Test Teardown    Fechar Aplicativo

*** Test Cases ***
Validar Elementos Da Tela De Login
    [Documentation]    Dado que abro o aplicativo, quando a tela inicial e exibida, entao os campos E-mail, Senha e Entrar estao visiveis.
    [Tags]    fumaça    login
    Dado Abrir Aplicativo
    Então A Tela de Login Deve Estar Visivel
