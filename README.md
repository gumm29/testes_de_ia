# Automacao Android - Lista de Tarefas

Projeto de testes de interface para o aplicativo Android Lista de Tarefas, usando Robot Framework, AppiumLibrary e Page Objects.

## Requisitos

- Python 3.10 ou superior
- Android SDK com `adb`
- Emulador Android ou dispositivo conectado e autorizado para depuracao USB
- App Lista de Tarefas instalado no dispositivo
- Appium 2 com o driver UiAutomator2

## Configuracao

Instale as dependencias Python:

```sh
python3 -m pip install -r requirements.txt
```

Inicie o servidor Appium e confirme que o dispositivo esta disponivel:

```sh
appium
adb devices
```

O projeto usa por padrao o servidor `http://127.0.0.1:4723`, o dispositivo `emulator-5554` e o pacote Android `com.quati.listadetarefa`. Esses valores e as demais capabilities estao centralizados em `resources/base.resource`.

## Executar os testes

Na raiz do projeto:

```sh
robot --pythonpath resources --outputdir results tests/
```

Para validar a estrutura das suites sem interagir com o dispositivo:

```sh
robot --dryrun --pythonpath resources --output NONE --log NONE --report NONE tests/
```

Os relatorios HTML e o arquivo XML sao gravados em `results/`.

## Suites

| Arquivo | Cobertura |
| --- | --- |
| `tests/login.robot` | Login com credenciais validas |
| `tests/smoke_app.robot` | Elementos principais da tela de login |
| `tests/prioridades.robot` | Criacao sem prioridade e com prioridades verde, amarela e vermelha |
| `tests/tarefas.robot` | Criacao e remocao de tarefa |

Atualmente, a suite contem oito cenarios. Os testes de interface exigem que o aplicativo e o servidor Appium estejam ativos no dispositivo configurado.

## Estrutura

- `resources/base.resource`: configuracao e ciclo de vida da sessao Appium.
- `resources/pages/`: seletores e acoes organizados por tela.
- `tests/`: cenarios Robot Framework em portugues.
- `tarefas/`: descricoes dos cenarios de origem.
- `robot.toml`: caminhos e configuracao padrao do RobotCode.
- `requirements.txt`: dependencias Python do projeto.
