#!/usr/bin/env bash
# Script de apoio para execução no GitHub Codespaces (repositório thiagocloudnet/FlutterApp)
set -euo pipefail

PROJECT_ID="${1:-flutter-app-3883}"
BRANCH_NAME="${2:-semana2}"

echo "=== [1/6] Instalando e validando Firebase CLI ==="
if ! command -v firebase >/dev/null 2>&1; then
  npm install -g firebase-tools
fi
firebase --version

echo "=== [2/6] Autenticação remota no Firebase (--no-localhost) ==="
echo "Siga o link OAuth2 exibido abaixo e cole o código de autorização:"
firebase login --no-localhost

echo "=== [3/6] Inicializando vínculo Firebase no diretório atual ==="
firebase init

echo "=== [4/6] Criando/alternando para a branch ${BRANCH_NAME} ==="
if git show-ref --verify --quiet "refs/heads/${BRANCH_NAME}"; then
  git checkout "${BRANCH_NAME}"
else
  git checkout -b "${BRANCH_NAME}"
fi

echo "=== [5/6] Configurando FlutterFire CLI (opcional se Dart/Flutter estiver instalado) ==="
if command -v dart >/dev/null 2>&1; then
  dart pub global activate flutterfire_cli
  export PATH="$PATH:$HOME/.pub-cache/bin"
  if [ -n "${PROJECT_ID}" ]; then
    flutterfire configure --project="${PROJECT_ID}"
  else
    echo "Aviso: passe o PROJECT_ID como 1º argumento para rodar 'flutterfire configure' automaticamente."
  fi
else
  echo "Dart não detectado neste contêiner; etapa FlutterFire pulada."
fi

echo "=== [6/6] Garantindo proteções no .gitignore ==="
touch .gitignore
for entry in ".env" ".firebase/" "lib/firebase_options.dart" "android/app/google-services.json"; do
  if ! grep -qxF "${entry}" .gitignore; then
    echo "${entry}" >> .gitignore
  fi
done

echo "Concluído! Revise 'git status' e execute:"
echo "  git add .firebaserc firebase.json .gitignore"
echo "  git commit -m \"Configura integracao inicial com Google Firebase\""
echo "  git push origin ${BRANCH_NAME}"
