*** Settings ***
Documentation    Page Object do formulario de tarefas mapeado no emulador Android.
Resource    ../base.resource

*** Variables ***
${CAMPO_TITULO_TAREFA}    xpath=(//android.widget.EditText)[1]
${CAMPO_DESCRICAO_TAREFA}    xpath=(//android.widget.EditText)[2]
${ROTULO_PRIORIDADE_TAREFA}    //*[@text="Nivel de prioridade"]
${RADIO_PRIORIDADE_VERDE}    xpath=(//android.widget.RadioButton)[1]
${RADIO_PRIORIDADE_AMARELA}    xpath=(//android.widget.RadioButton)[2]
${RADIO_PRIORIDADE_VERMELHA}    xpath=(//android.widget.RadioButton)[3]
${BOTAO_SALVAR_TAREFA}    //*[@text="Salvar"]

*** Keywords ***
Aguardar Formulario De Tarefa Visivel
    Aguardar Elementos Visiveis    ${CAMPO_TITULO_TAREFA}    ${CAMPO_DESCRICAO_TAREFA}    ${ROTULO_PRIORIDADE_TAREFA}    ${RADIO_PRIORIDADE_VERDE}    ${RADIO_PRIORIDADE_AMARELA}    ${RADIO_PRIORIDADE_VERMELHA}    ${BOTAO_SALVAR_TAREFA}

Preencher Titulo Da Tarefa
    [Arguments]    ${titulo}
    Input Text    ${CAMPO_TITULO_TAREFA}    ${titulo}

Preencher Descricao Da Tarefa
    [Arguments]    ${descricao}
    Input Text    ${CAMPO_DESCRICAO_TAREFA}    ${descricao}

Selecionar Prioridade
    [Arguments]    ${prioridade}
    Click Element    ${RADIO_PRIORIDADE_${prioridade}}

Prioridade Selecionada Deve Ser
    [Arguments]    ${PRIORIDADE}
    ${checked}=    Get Element Attribute    ${RADIO_PRIORIDADE_${PRIORIDADE}}    checked
    Should Be Equal    ${checked}    true

Salvar Tarefa
    Click Text    Salvar    exact_match=True

Tarefa Deve Estar Na Lista
    [Arguments]    ${titulo}
    ${locator}=    Set Variable    xpath=//*[@text="${titulo}"]
    Scroll Down    ${locator}
    Wait Until Element Is Visible    ${locator}