*** Settings ***
Documentation    Page Object do formulario de tarefas. O mapeamento aguarda acesso autenticado ao app.

*** Keywords ***
Preencher Titulo Da Tarefa
    [Arguments]    ${titulo}
    Skip    Mapeamento pendente: autentique no aplicativo para inspecionar o formulario de tarefas.

Selecionar Prioridade
    [Arguments]    ${prioridade}=${NONE}
    IF    $prioridade not in (None, "verde", "amarela", "vermelha")
        Fail    Prioridade invalida: use verde, amarela, vermelha ou nenhuma.
    END
    Skip    Mapeamento pendente: autentique no aplicativo para inspecionar as opcoes de prioridade.

Salvar Tarefa
    Skip    Mapeamento pendente: autentique no aplicativo para inspecionar como salvar uma tarefa.