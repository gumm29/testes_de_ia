*** Settings ***
Documentation    Page Object da tela de login mapeada no emulador Android.
Resource    ../base.resource
Resource    lista_tarefas.resource

*** Variables ***
${ROTULO_EMAIL}       //*[@text="E-mail"]
${ROTULO_SENHA}       //*[@text="Senha"]
${ROTULO_ENTRAR}      //*[@text="Entrar"]
${CAMPO_EMAIL}        xpath=(//android.widget.EditText)[1]
${CAMPO_SENHA}        xpath=(//android.widget.EditText)[2]

*** Keywords ***
A Tela de Login Deve Estar Visivel
    Aguardar Elementos Visiveis    ${ROTULO_EMAIL}    ${ROTULO_SENHA}    ${ROTULO_ENTRAR}    ${CAMPO_EMAIL}    ${CAMPO_SENHA}

Preencher Email De Login
    [Arguments]    ${email}
    Input Text    ${CAMPO_EMAIL}    ${email}

Preencher Senha De Login
    [Arguments]    ${senha}
    Input Text    ${CAMPO_SENHA}    ${senha}

Tocar Em Entrar
    Click Text    Entrar    exact_match=True

Abrir Aplicativo E Autenticar
    Abrir Aplicativo
    ${login_visivel}=    Run Keyword And Return Status    A Tela de Login Deve Estar Visivel
    IF    $login_visivel
        Preencher Email De Login    Gustavo
        Preencher Senha De Login    123456
        Tocar Em Entrar
    END