*** Settings ***
Documentation    Testes de fumaça do aplicativo Lista de Tarefas.
Resource    ../resources/base.resource
Resource    ../resources/pages/login_page.resource
Test Setup    Abrir Aplicativo
Test Teardown    Fechar Aplicativo

*** Test Cases ***
Exibir Tela De Login
    [Documentation]    Confirma que o aplicativo abre e mostra os campos de login observados.
    [Tags]    fumaça    login
    A Tela de Login Deve Estar Visivel