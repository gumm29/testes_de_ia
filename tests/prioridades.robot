Language: pt-BR
*** Settings ***
Documentation    Cenarios de criacao de tarefas com diferentes prioridades.
Resource    ../resources/base.resource
Resource    ../resources/pages/login_page.resource
Resource    ../resources/pages/formulario_tarefa.resource
Test Teardown    Fechar Aplicativo

*** Test Cases ***
Criar Tarefa Sem Prioridade
    [Documentation]    Cria uma tarefa sem selecionar prioridade.
    [Tags]    prioridades    sem-prioridade
    Dado Abrir Aplicativo E Autenticar
    E Aguardar Lista De Tarefas Visivel
    E Clique em Adicionar Tarefa
    E Preencher Titulo Da Tarefa    Teste sem prioridade
    E Preencher Descricao Da Tarefa    Descricao sem prioridade
    E Salvar Tarefa
    Quando Aguardar Lista De Tarefas Visivel
    Então Tarefa Deve Estar Na Lista    Teste sem prioridade

Criar Tarefa Com Prioridade Verde
    [Documentation]    Cria uma tarefa com prioridade verde e verifica a selecao.
    [Tags]    prioridades    verde
    Dado Abrir Aplicativo E Autenticar
    E Aguardar Lista De Tarefas Visivel
    E Clique em Adicionar Tarefa
    Quando Preencher Titulo Da Tarefa    Teste prioridade verde
    E Preencher Descricao Da Tarefa    Descricao prioridade verde
    E Selecionar Prioridade    verde
    Então Prioridade Selecionada Deve Ser    verde
    E Salvar Tarefa
    E Aguardar Lista De Tarefas Visivel
    E Tarefa Deve Estar Na Lista    Teste prioridade verde

Criar Tarefa Com Prioridade Amarela
    [Documentation]    Cria uma tarefa com prioridade amarela e verifica a selecao.
    [Tags]    prioridades    amarela
    Dado Abrir Aplicativo E Autenticar
    E Aguardar Lista De Tarefas Visivel
    E Clique em Adicionar Tarefa
    Quando Preencher Titulo Da Tarefa    Teste prioridade amarela
    E Preencher Descricao Da Tarefa    Descricao prioridade amarela
    E Selecionar Prioridade    amarela
    Então Prioridade Selecionada Deve Ser    amarela
    E Salvar Tarefa
    E Aguardar Lista De Tarefas Visivel
    E Tarefa Deve Estar Na Lista    Teste prioridade amarela

Criar Tarefa Com Prioridade Vermelha
    [Documentation]    Cria uma tarefa com prioridade vermelha e verifica a selecao.
    [Tags]    prioridades    vermelha
    Dado Abrir Aplicativo E Autenticar
    E Aguardar Lista De Tarefas Visivel
    E Clique em Adicionar Tarefa
    Quando Preencher Titulo Da Tarefa    Teste prioridade vermelha
    E Preencher Descricao Da Tarefa    Descricao prioridade vermelha
    E Selecionar Prioridade    vermelha
    Então Prioridade Selecionada Deve Ser    vermelha
    E Salvar Tarefa
    E Aguardar Lista De Tarefas Visivel
    E Tarefa Deve Estar Na Lista    Teste prioridade vermelha