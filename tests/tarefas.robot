Language: pt-BR
*** Settings ***
Documentation    Cenarios de criacao e remocao de tarefas.
Resource    ../resources/base.resource
Resource    ../resources/pages/login_page.resource
Resource    ../resources/pages/lista_tarefas.resource
Resource    ../resources/pages/formulario_tarefa.resource
Test Teardown    Fechar Aplicativo

*** Test Cases ***
Criar Tarefa
    [Documentation]    Cadastra uma tarefa e verifica sua presenca na lista.
    [Tags]    tarefas    criar
    Dado Abrir Aplicativo E Autenticar
    E Aguardar Lista De Tarefas Visivel
    E Clique em Adicionar Tarefa
    E Aguardar Formulario De Tarefa Visivel
    E Preencher Titulo Da Tarefa    Tarefa automatizada
    E Preencher Descricao Da Tarefa    Descricao da tarefa automatizada
    E Salvar Tarefa
    E Aguardar Lista De Tarefas Visivel
    Então Tarefa Deve Estar Na Lista    Tarefa automatizada

Remover Tarefa Da Lista
    [Documentation]    Cria uma tarefa e a remove pelo icone de lixeira correspondente.
    [Tags]    tarefas    remover
    Dado Abrir Aplicativo E Autenticar
    E Aguardar Lista De Tarefas Visivel
    E Clique em Adicionar Tarefa
    E Aguardar Formulario De Tarefa Visivel
    E Preencher Titulo Da Tarefa    Tarefa para remover
    E Preencher Descricao Da Tarefa    Tarefa criada para validar remocao
    E Salvar Tarefa
    E Aguardar Lista De Tarefas Visivel
    Remover Tarefa    Tarefa para remover
