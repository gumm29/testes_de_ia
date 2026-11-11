*** Settings ***
Documentation    Page Object da lista de tarefas.
Library    Collections
Resource    ../base.resource

*** Variables ***
${TITULO_LISTA_TAREFAS}    //*[@text="Lista de Tarefas"]
${BOTAO_ADICIONAR_TAREFA}    accessibility_id=botao adicionar tarefa
${TITULOS_TAREFAS}    class=android.widget.TextView
${BOTOES_REMOVER_TAREFA}    accessibility_id=Deletar tarefa

*** Keywords ***
Aguardar Lista De Tarefas Visivel
    Aguardar Elementos Visiveis    ${TITULO_LISTA_TAREFAS}    ${BOTAO_ADICIONAR_TAREFA}

Remover Tarefa
    [Arguments]    ${titulo}
    ${titulos}=    Get Webelements    ${TITULOS_TAREFAS}
    ${botoes_remover}=    Get Webelements    ${BOTOES_REMOVER_TAREFA}
    ${indice_titulo}=    Set Variable    ${-1}
    FOR    ${indice}    ${elemento}    IN ENUMERATE    @{titulos}
        ${texto}=    Get Text    ${elemento}
        IF    $texto == $titulo
            ${indice_titulo}=    Set Variable    ${indice}
            BREAK
        END
    END
    Should Not Be Equal As Integers    ${indice_titulo}    ${-1}    Tarefa nao encontrada na lista: ${titulo}
    ${indice_tarefa}=    Evaluate    ${indice_titulo} // 3
    ${botao_remover}=    Get From List    ${botoes_remover}    ${indice_tarefa}
    Click Element    ${botao_remover}
    Wait Until Page Does Not Contain    ${titulo}

Clique em Adicionar Tarefa
    Click Element    ${BOTAO_ADICIONAR_TAREFA}
