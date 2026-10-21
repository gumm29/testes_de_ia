*** Settings ***
Library    AppiumLibrary

*** Variables ***
${APPIUM_URL}             http://127.0.0.1:4723
${PLATFORM_NAME}          Android
${AUTOMATION_NAME}        UiAutomator2
${APP_PACKAGE}            com.quati.listadetarefa
${APP_ACTIVITY}           com.quati.listadetarefa.MainActivity
${DEVICE_UDID}            emulator-5554
${NEW_COMMAND_TIMEOUT}    90000

*** Keywords ***
Abrir Aplicativo
    Open Application    ${APPIUM_URL}
    ...    platformName=${PLATFORM_NAME}
    ...    automationName=${AUTOMATION_NAME}
    ...    appPackage=${APP_PACKAGE}
    ...    appActivity=${APP_ACTIVITY}
    ...    udid=${DEVICE_UDID}
    ...    newCommandTimeout=${NEW_COMMAND_TIMEOUT}

Fechar Aplicativo
    Run Keyword And Ignore Error    Close Application