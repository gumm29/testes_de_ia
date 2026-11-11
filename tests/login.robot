Language: pt-BR
*** Settings ***
Documentation    Cenarios de validacao do login do aplicativo Lista de Tarefas.
Library    OperatingSystem
Resource    ../resources/base.resource
Resource    ../resources/pages/login_page.resource
Test Teardown    Fechar Aplicativo

*** Test Cases ***
Login Com Credenciais Validas
    [Documentation]    Acessa a lista de tarefas com credenciais validas configuradas no ambiente.
    [Tags]    login    positivo
    Dado Abrir Aplicativo
    Quando Preencher Email De Login    Gustavo
    E Preencher Senha De Login    123456
    E Tocar Em Entrar
    Então Aguardar Lista De Tarefas Visivel
