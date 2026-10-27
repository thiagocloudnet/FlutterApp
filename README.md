# Desenvolvimento Mobile I — UESB 2026.2

Projeto Flutter da disciplina, organizado a partir das branches semana1 e semana4. O aplicativo introdutório e o histórico anterior foram preservados.

## Atividades

| Atividade | Conteúdo | Branch de entrega |
| --- | --- | --- |
| 6 | Ambiente Flutter Web / Codespaces | semana1 (já avaliada) |
| 7 | List e Map, cálculo de médias | semana4 (já avaliada) |
| 8 | Orientação a objetos, Professor e aprovação | semana5 |
| 9 | Future e Stream com cálculo de médias | semana6 |

## Executar

```sh
flutter pub get
flutter analyze
flutter test
flutter run -d chrome
```

A pasta `web/` contém o suporte web. No Codespaces, use a configuração Flutter Web e a porta 8080; mantenha a visibilidade da porta conforme sua necessidade de acesso.

Os arquivos das semanas 5 e 6 aparecem nas respectivas branches e na versão consolidada.

## Organização

- `lib/main.dart`: interface e contador já existentes.
- `lib/academico.dart`: modelo da Semana 5.
- `lib/assincrono.dart`: operações da Semana 6.
- `test/list_test.dart` e `test/map_test.dart`: exercícios anteriores, com estado reiniciado em cada teste.
- `test/oo_test.dart`: matrícula, professor, média e limite de aprovação.
- `test/async_test.dart`: resultados, erros e sequência completa dos eventos.
- `docs/`: requisitos, decisões, referências e validação.

Os roteiros são a base didática do código. As adaptações e a assistência de IA estão registradas em `docs/AUTORIA_E_REFERENCIAS.md`. O uso deve respeitar as regras do professor.

Os testes de OO e assincronia rodam sem Firebase. Firebase Studio é o ambiente citado pelo curso; não foi encontrada integração de autenticação ou banco Firebase no código inspecionado.
