*** Settings ***
Documentation    Page Object da lista de tarefas. O mapeamento aguarda acesso autenticado ao app.

*** Keywords ***
Concluir Tarefa
    [Arguments]    ${titulo}
    Skip    Mapeamento pendente: autentique no aplicativo para inspecionar a lista e os controles de conclusao.

Editar Tarefa
    [Arguments]    ${titulo_atual}    ${novo_titulo}
    Skip    Mapeamento pendente: autentique no aplicativo para inspecionar a lista e os controles de edicao.

Remover Tarefa
    [Arguments]    ${titulo}
    Skip    Mapeamento pendente: autentique no aplicativo para inspecionar a lista e os controles de remocao.