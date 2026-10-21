*** Settings ***
Documentation  Teste para abrir Chrome no Android e procurar por palavra
Library  AppiumLibrary

*** Variables ***
${AUTOMATION_NAME}    UiAutomator2
${PLATFORM_NAME}      Android
${APP_PACKAGE}                com.android.chrome
${DEVICE_UDID}                emulator-5554
${TIMEOUT}                    90000
${SEARCH_TEXT}                teste
${SEARCH_BOX_ACCESSIBILITY_ID}  //android.widget.EditText

*** Test Cases ***
Abrir Chrome e procurar por teste
    [Documentation]  Abrir Chrome no Android e digitar "teste" na barra de pesquisa
    Abrir aplicativo
    Wait Until Element Is Visible  ${SEARCH_BOX_ACCESSIBILITY_ID}
    Click Element  ${SEARCH_BOX_ACCESSIBILITY_ID}
    Input Text  ${SEARCH_BOX_ACCESSIBILITY_ID}  ${SEARCH_TEXT}
    Fechar aplicativo







*** Keywords ***
Abrir aplicativo
    Open Application  http://127.0.0.1:4723
    ...  automationName=${AUTOMATION_NAME}
    ...  platformName=${PLATFORM_NAME}
    ...  appPackage=${APP_PACKAGE}
    ...  appActivity=com.google.android.apps.chrome.Main
    ...  udid=${DEVICE_UDID}
    ...  newCommandTimeout=${TIMEOUT}
    ...  noReset=true

    Log  "Chrome aberto com sucesso!"

Fechar aplicativo
    Close Application
