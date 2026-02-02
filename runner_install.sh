#!/bin/bash
set -e

### Setup SEM Docker in Docker

# Variáveis
GITLAB_URL="https://gitlab.com/"
read -p "Token de registro: " REGISTRATION_TOKEN

# Remove container se existir
docker rm -f gitlab-runner 2>/dev/null || true

# Cria volume
docker volume create gitlab-runner-config

# Sobe container
docker run -d \
  --name gitlab-runner \
  --restart always \
  -v /var/run/docker.sock:/var/run/docker.sock \
  -v gitlab-runner-config:/etc/gitlab-runner \
  gitlab/gitlab-runner:latest

# Pausa dramática (Aguarda o container iniciar)
sleep 5

# Registra runner
docker exec gitlab-runner gitlab-runner register \
  --non-interactive \
  --url "$GITLAB_URL" \
  --registration-token "$REGISTRATION_TOKEN" \
  --executor "docker" \
  --docker-image "alpine:latest" \
  --docker-volumes "/var/run/docker.sock:/var/run/docker.sock"

echo "Pronto!"