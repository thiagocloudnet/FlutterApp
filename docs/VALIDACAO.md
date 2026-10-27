# Validação — atividades 8 e 9

Data: 26/10/2026. A cópia local contém as implementações e os testes dos roteiros.

## Estado atual

- Revisão dos requisitos e do código: concluída.
- Integridade dos caminhos dos arquivos: conferida; duplicações corrigidas.
- `git diff --check`: sem erros.
- `flutter analyze`, `flutter test` e `flutter build web`: aguardam a conclusão da instalação do SDK oficial no ambiente local.
- Nenhum resultado de teste Flutter está sendo declarado como aprovado nesta versão do documento.

O workflow `.github/workflows/flutter.yml` executa dependências, análise, testes e build web quando as branches forem publicadas. A publicação e a conclusão do workflow precisam ser verificadas antes de registrar aprovação em CI.

## Casos cobertos pelos testes preparados

- Semana 4: manipulação de List e Map e cálculo de médias.
- Semana 5: associação de professor, matrícula, identificador e ano positivos, média sem notas, limite estrito de aprovação e matrícula inválida ou repetida.
- Semana 6: resultado de Future, pesquisa válida e inválida, contagem em Stream, médias com erro intermediário e lista vazia.
- Interface existente: incremento do contador.

Os comandos e seus resultados serão registrados neste arquivo após a execução real. O pacote não contém APK Android nem comprova envio ao Moodle.
