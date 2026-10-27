# Desenvolvimento Mobile I

## Atividade 7 — Semana 4

### Estruturas de Dados em Dart

Esta atividade pratica colecoes em Dart de forma direta e didatica, preservando o aplicativo e os testes anteriores.

## Objetivo

Aplicar `List` e `Map` para incluir, consultar, atualizar, remover, percorrer, transformar e filtrar dados. O exercicio final calcula as medias das notas a partir dos valores armazenados no Map.

## Conteudo estudado

- `List`: `add()`, `addAll()`, `insert()`, `remove()`, `removeAt()`, `length`, `isEmpty`, `isNotEmpty`, `reversed`, `sort()`, `for-in`, `map()` e `where()`.
- `Map`: `putIfAbsent()`, `containsKey()`, `update()`, `keys`, `values`, `forEach()` e remocao de entradas.
- Calculo de media por iteracao das notas, sem valores fixos para as medias.

## Arquivos da atividade

- `test/list_test.dart`: exercicios de listas.
- `test/map_test.dart`: exercicios de mapas, notas e medias.
- `docs/semana4/VALIDACAO.md`: evidencias reais dos comandos executados.

## Como executar

Na raiz do repositorio:

```bash
flutter pub get
dart format .
flutter analyze
flutter test
flutter build web
```

Os testes usam `setUp()` para reiniciar as colecoes a cada caso. Isso preserva a intencao pedagogica do roteiro e elimina dependencia da ordem de execucao.
