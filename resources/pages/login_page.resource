*** Settings ***
Documentation    Page Object da tela de login mapeada no emulador Android.
Library    AppiumLibrary

*** Variables ***
${ROTULO_EMAIL}       xpath=//*[@text="E-mail"]
${ROTULO_SENHA}       xpath=//*[@text="Senha"]
${ROTULO_ENTRAR}      xpath=//*[@text="Entrar"]
${CAMPO_EMAIL}        xpath=(//android.widget.EditText)[1]
${CAMPO_SENHA}        xpath=(//android.widget.EditText)[2]

*** Keywords ***
A Tela de Login Deve Estar Visivel
    Wait Until Page Contains Element    ${ROTULO_EMAIL}    10s
    Wait Until Page Contains Element    ${ROTULO_SENHA}    10s
    Wait Until Page Contains Element    ${ROTULO_ENTRAR}    10s

Preencher Email De Login
    [Arguments]    ${email}
    Input Text    ${CAMPO_EMAIL}    ${email}

Preencher Senha De Login
    [Arguments]    ${senha}
    Input Text    ${CAMPO_SENHA}    ${senha}

Tocar Em Entrar
    Click Text    Entrar    exact_match=True

A Lista De Tarefas Deve Estar Visivel
    Wait Until Page Contains    Lista de Tarefas    10s