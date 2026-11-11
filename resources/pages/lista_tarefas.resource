*** Settings ***
Documentation    Page Object da lista de tarefas. O mapeamento aguarda acesso autenticado ao app.
Resource    ../base.resource

*** Variables ***
${TITULO_LISTA_TAREFAS}    //*[@text="Lista de Tarefas"]
${BOTAO_ADICIONAR_TAREFA}    accessibility_id=botao adicionar tarefa

*** Keywords ***
Aguardar Lista De Tarefas Visivel
    Aguardar Elementos Visiveis    ${TITULO_LISTA_TAREFAS}    ${BOTAO_ADICIONAR_TAREFA}

Concluir Tarefa
    [Arguments]    ${titulo}
    Skip    Mapeamento pendente: autentique no aplicativo para inspecionar a lista e os controles de conclusao.

Editar Tarefa
    [Arguments]    ${titulo_atual}    ${novo_titulo}
    Skip    Mapeamento pendente: autentique no aplicativo para inspecionar a lista e os controles de edicao.

Remover Tarefa
    [Arguments]    ${titulo}
    Skip    Mapeamento pendente: autentique no aplicativo para inspecionar a lista e os controles de remocao.

Clique em Adicionar Tarefa
    Click Element    ${BOTAO_ADICIONAR_TAREFA}
