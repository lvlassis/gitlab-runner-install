# Gitlab Runner Install

Este é um script de instalação do Gitlab-Runner em um servidor.

## Pré-requisitos

No servidor, é necessário ter os pacotes:
- `docker`
- `git`
- `tar`

## Uso

Para instalar o Gitlab-Runner:

1. Cadastre um novo Runner em seu **projeto**, **grupo**, ou **instância** do Gitlab.
2. Obtenha o Token do seu Runner.
3. No servidor, execute o script de instalação:
```shell
curl https://raw.githubusercontent.com/lvlassis/gitlab-runner-install/refs/heads/main/runner_install.sh -o runner_install.sh && chmod +x runner_install.sh.1 && ./runner_install.sh
```
4. Forneça o Token ao script.
