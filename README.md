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
