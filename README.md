# Gitlab Runner Install

Este é um script de instalação do Gitlab-Runner em um servidor.

## Pré-requisitos

No servidor, é necessário ter os pacotes:
- `docker`

## Uso

Para instalar o Gitlab-Runner:

1. Cadastre um novo Runner em seu **projeto**, **grupo**, ou **instância** do Gitlab.
2. Obtenha o Token do seu Runner.
3. No servidor, execute o script de instalação:
```shell
git archive --remote=https://github.com/lvlassis/gitlab-runner-install.git HEAD runner_install.sh | tar -xO > runner_install.sh && chmod +x runner_install.sh && ./runner_install.sh

```
4. Forneça o Token ao script.
