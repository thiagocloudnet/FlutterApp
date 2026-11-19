# FlutterApp — Desenvolvimento Mobile (UESB 2026.2)

Projeto inicializado do zero (sem vínculo de fork) para integração entre **Flutter**, **Google Firebase** (`flutter-app-3883`) e **GitHub Codespaces**.

## Estrutura
- `lib/main.dart` — Aplicação inicial preparada para `Firebase.initializeApp`.
- `test/widget_test.dart` — Teste de widget básico.
- `pubspec.yaml` — Dependências (`flutter`, `cupertino_icons`, `firebase_core`).
- `.devcontainer/devcontainer.json` — Ambiente pronto para Codespaces com Node.js, Flutter e `firebase-tools`.
- `.env.example` — Modelo de variáveis de ambiente para credenciais do Firebase.

## Execução no GitHub Codespaces
```bash
firebase --version
firebase login --no-localhost
firebase init
git checkout -b semana2
dart pub global activate flutterfire_cli
flutterfire configure --project=flutter-app-3883
```
