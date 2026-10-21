*** Settings ***
Documentation    Cenários de tarefas; aguardam autenticação e mapeamento da interface.
Resource    ../resources/pages/lista_tarefas.resource
Resource    ../resources/pages/formulario_tarefa.resource

*** Test Cases ***
Criar Tarefa
    [Documentation]    Cadastra uma tarefa e verifica sua presença na lista.
    [Tags]    tarefas    pendente-mapeamento
    Preencher Titulo Da Tarefa    Tarefa automatizada
    Salvar Tarefa

Concluir Tarefa Existente
    [Documentation]    Marca como concluída uma tarefa existente.
    [Tags]    tarefas    pendente-mapeamento
    Concluir Tarefa    Tarefa automatizada

Editar Titulo Da Tarefa
    [Documentation]    Altera o título de uma tarefa existente.
    [Tags]    tarefas    pendente-mapeamento
    Editar Tarefa    Tarefa automatizada    Tarefa atualizada

Remover Tarefa Da Lista
    [Documentation]    Remove uma tarefa e verifica sua ausência na lista.
    [Tags]    tarefas    pendente-mapeamento
    Remover Tarefa    Tarefa automatizada