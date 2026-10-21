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
    Então A Lista De Tarefas Deve Estar Visivel

Login Sem Preencher Campos
    [Documentation]    Impede o acesso quando email e senha estao vazios.
    [Tags]    login    negativo
    Dado Abrir Aplicativo
    Quando Tocar Em Entrar
    Então A Tela de Login Deve Estar Visivel

Login Apenas Com Email
    [Documentation]    Impede o acesso quando somente o email esta preenchido.
    [Tags]    login    negativo
    Dado Abrir Aplicativo
    Quando Preencher Email De Login    login.invalido@example.invalid
    E Tocar Em Entrar
    Então A Tela de Login Deve Estar Visivel

Login Apenas Com Senha
    [Documentation]    Impede o acesso quando somente a senha esta preenchida.
    [Tags]    login    negativo
    Dado Abrir Aplicativo
    Quando Preencher Senha De Login    senha-de-teste-invalida
    E Tocar Em Entrar
    Então A Tela de Login Deve Estar Visivel
