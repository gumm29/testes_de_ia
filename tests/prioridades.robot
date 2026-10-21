*** Settings ***
Documentation    Cenários de prioridade; aguardam autenticação e mapeamento da interface.
Resource    ../resources/pages/formulario_tarefa.resource

*** Test Cases ***
Criar Tarefa Sem Prioridade
    [Documentation]    Cria uma tarefa sem selecionar prioridade.
    [Tags]    prioridades    pendente-mapeamento
    Preencher Titulo Da Tarefa    Tarefa sem prioridade
    Selecionar Prioridade
    Salvar Tarefa

Criar Tarefa Com Prioridade Verde
    [Documentation]    Cria uma tarefa com prioridade verde.
    [Tags]    prioridades    pendente-mapeamento
    Preencher Titulo Da Tarefa    Tarefa prioridade verde
    Selecionar Prioridade    verde
    Salvar Tarefa

Criar Tarefa Com Prioridade Amarela
    [Documentation]    Cria uma tarefa com prioridade amarela.
    [Tags]    prioridades    pendente-mapeamento
    Preencher Titulo Da Tarefa    Tarefa prioridade amarela
    Selecionar Prioridade    amarela
    Salvar Tarefa

Criar Tarefa Com Prioridade Vermelha
    [Documentation]    Cria uma tarefa com prioridade vermelha.
    [Tags]    prioridades    pendente-mapeamento
    Preencher Titulo Da Tarefa    Tarefa prioridade vermelha
    Selecionar Prioridade    vermelha
    Salvar Tarefa