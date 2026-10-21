*** Settings ***
Documentation  Teste para abrir Chrome, buscar "teste" e clicar no primeiro resultado usando mapeamento-appium
Library  AppiumLibrary

*** Variables ***
${AUTOMATION_NAME}    UiAutomator2
${PLATFORM_NAME}      Android
${APP_PACKAGE}                com.quati.listadetarefa
${DEVICE_UDID}                emulator-5554
${TIMEOUT}                    90000
${TEXT}                teste

*** Test Cases ***
Buscar e clicar no primeiro resultado com mapeamento-appium
    [Documentation]  Abrir Chrome, digitar "teste" e clicar no primeiro resultado usando XPath com resource-id
    Abrir aplicativo Chrome
    Digitar na barra de pesquisa
    Aguardar resultados
    Clicar no primeiro resultado
    [Teardown]  Fechar aplicativo Chrome

*** Keywords ***
Abrir aplicativo Chrome
    Open Application  http://127.0.0.1:4723
    ...  automationName=${AUTOMATION_NAME}
    ...  platformName=${PLATFORM_NAME}
    ...  appPackage=${APP_PACKAGE}
    ...  appActivity=com.google.android.apps.chrome.Main
    ...  udid=${DEVICE_UDID}
    ...  newCommandTimeout=${TIMEOUT}
    ...  noReset=true

    Log  "Chrome aberto com sucesso!"

Digitar na barra de pesquisa
    Wait Until Element Is Visible  //android.widget.EditText     40s
    Input Text  //android.widget.EditText  ${TEXT}
    Press Keycode   66
    Press Keycode   66
    Log  "Texto digitado: ${TEXT}"

Aguardar resultados
    Wait Until Page Contains  Speedtest   10s
    Log  "Resultados encontrados"

Clicar no primeiro resultado
    [Documentation]  Clicar no primeiro resultado usando XPath com resource-id
    Click Text  Speedtest
    Log  "Clicado no primeiro resultado"

Fechar aplicativo Chrome
    Close Application
    Log  "Chrome fechado"