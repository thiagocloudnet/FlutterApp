# FlutterApp — Desenvolvimento Mobile I (UESB — 2026.2)

Este repositório contém um esqueleto inicial de um aplicativo Flutter educacional para a disciplina "Desenvolvimento Mobile I" da UESB — 2026.2.

Objetivo
--------
Preparar um aplicativo Flutter simples, funcional e documentado que serve como ponto de partida para os exercícios da disciplina. O material inclui uma interface introdutória em português, um teste funcional básico e instruções para configurar e validar o projeto localmente.

Estrutura do repositório
------------------------
- lib/main.dart — código-fonte principal do aplicativo (interface introdutória em português).
- test/widget_test.dart — teste funcional que valida a interação principal (contador/ botão).
- pubspec.yaml — metadados e dependências do Flutter.
- .gitignore — arquivo já presente para Flutter/Dart.

Requisitos
---------
- Flutter SDK instalado (recomenda-se a versão estável atual). Veja https://flutter.dev para instruções.
- Android SDK e/ou Chrome (para alvo web) caso queira executar em emulador/dispositivo.
- Conexão com a internet para baixar dependências.

Como executar localmente
------------------------
1. Clone o repositório:

   git clone https://github.com/uesb-academicos/FlutterApp.git
   cd FlutterApp

2. Baixe dependências:

   flutter pub get

3. Valide/análise estática:

   flutter analyze

4. Execute os testes:

   flutter test

5. Liste dispositivos disponíveis:

   flutter devices

6. Execute a aplicação (exemplo para web):

   flutter run -d chrome

Comandos de validação (resumo)
------------------------------
- flutter pub get — baixa dependências
- flutter analyze — análise estática
- flutter test — executa testes
- flutter devices — lista dispositivos conectados/emuladores

Status do projeto
-----------------
- Implementado: esqueleto do app em Flutter com interface introdutória em português; teste funcional básico.
- Pendências: arquivos da estrutura completa gerada pelo comando `flutter create` (android/, ios/, web/, macos/, windows/) não foram adicionados por aqui — recomenda-se gerar o projeto localmente com `flutter create .` caso queira a estrutura completa e depois subir os arquivos.

Boas práticas e segurança
------------------------
- Não há chaves, senhas, tokens ou arquivos .env incluídos.
- Não foram habilitados serviços externos (Firebase, AdMob, etc.).

O que eu alterei/criei neste commit
----------------------------------
- lib/main.dart
- test/widget_test.dart
- pubspec.yaml
- README.md (este arquivo)

Observações finais
------------------
Eu não executei os comandos `flutter pub get`, `flutter analyze`, `flutter test` ou `flutter devices` no ambiente remoto — você deve rodá-los localmente ou no Cloud Shell após autenticar com o GitHub e enviar seu projeto local completo (se houver). Siga as instruções acima.

Se quiser, eu posso:
- adicionar um GitHub Action para rodar `flutter analyze` e `flutter test` automaticamente em PRs;
- preparar a estrutura completa do projeto gerada pelo `flutter create` (mas isso adiciona muitos arquivos grandes).

