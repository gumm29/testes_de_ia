# testes_de_ia

## Notificacoes de novos pull requests

O workflow `.github/workflows/notify-new-pr.yml` envia um email quando um pull request e aberto neste repositorio. Ele comeca a monitorar depois que o workflow estiver na branch padrao `main`.

Configure estes repository secrets em **Settings > Secrets and variables > Actions**:

- `NOTIFY_EMAIL`: endereco que recebera os avisos.
- `SMTP_HOST`: servidor SMTP, por exemplo `smtp.gmail.com`.
- `SMTP_PORT`: porta SMTP, normalmente `465` ou `587`.
- `SMTP_USERNAME`: usuario SMTP.
- `SMTP_PASSWORD`: senha ou senha de app SMTP.
- `SMTP_FROM`: endereco usado como remetente.
- `SMTP_SECURE`: `true` para porta `465`; `false` para porta `587` com STARTTLS.

Sem esses secrets, o workflow registra um aviso e nao tenta enviar o email.

## Automacao Android

O projeto Robot Framework/Appium usa Page Objects em `resources/pages/` e casos de teste em `tests/`.

Instale as dependencias:

```sh
python3 -m pip install -r requirements.txt
```

Com o emulador conectado e o servidor Appium ativo em `http://127.0.0.1:4723`, execute:

```sh
robotcode discover tests
robotcode analyze code
robotcode robot
```

As capabilities padrao estao em `resources/base.resource` e podem ser sobrescritas pela linha de comando do Robot Framework, por exemplo `--variable DEVICE_UDID:emulator-5554`. O teste de fumaça valida a tela de login observada no aplicativo. Os cenarios de tarefas e prioridades ficam ignorados ate haver uma forma de autenticar e mapear essas telas.
