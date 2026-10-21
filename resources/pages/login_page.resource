*** Settings ***
Documentation    Page Object da tela de login mapeada no emulador Android.
Library    AppiumLibrary

*** Variables ***
${ROTULO_EMAIL}       xpath=//*[@text="E-mail"]
${ROTULO_SENHA}       xpath=//*[@text="Senha"]
${ROTULO_ENTRAR}      xpath=//*[@text="Entrar"]

*** Keywords ***
A Tela de Login Deve Estar Visivel
    Wait Until Page Contains Element    ${ROTULO_EMAIL}    10s
    Wait Until Page Contains Element    ${ROTULO_SENHA}    10s
    Wait Until Page Contains Element    ${ROTULO_ENTRAR}    10s