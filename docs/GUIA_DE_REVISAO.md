# Revisão dos roteiros

## Semana 5 — Orientação a objetos

`Pessoa` concentra nome e identificador. É abstrata porque o roteiro usa tipos concretos, como `Aluno` e `Professor`. O campo `_id` é privado à biblioteca Dart; o setter rejeita valores menores ou iguais a zero.

O mixin `Ano` compartilha a validação do ano entre aluno e turma. `Turma` reúne disciplina, professor e alunos. `Historico` herda essa estrutura e acrescenta o Map de notas, sobrescrevendo `matricular` para criar uma lista vazia após validar a matrícula.

Exemplo: notas 8 e 9 somam 17; divididas por duas notas, produzem 8,5. Uma média 6,0 não aprova, pois o enunciado usa “superior a seis”. Sem notas, retorna zero, como o teste inicial do roteiro espera.

Revise e explique com suas palavras:
- Por que `Professor` também é uma `Pessoa`?
- Qual é a diferença entre herdar de uma classe e aplicar um mixin?
- Por que contar alunos no denominador da média daria resultado errado?
- O que acontece com as notas se uma matrícula repetida for aceita e reiniciar a lista?

## Semana 6 — Programação assíncrona

Um `Future` representa um resultado que ficará disponível depois. `await` espera esse resultado dentro de uma função assíncrona. Uma `Stream` permite vários resultados, emitidos ao longo do tempo; `async*` e `yield` produzem esses eventos.

Na Stream de médias, cada nome é pesquisado em sequência. Maria emite 8,5; Paula produz um evento de erro; Bruna ainda emite 7,0. A captura está dentro do laço para que o erro de um nome não encerre toda a pesquisa.

Os testes precisam aguardar a operação inteira. O uso de `expectLater` com `emitsInOrder` confere os dados, o erro e o encerramento da Stream.

Revise e explique com suas palavras:
- Qual é a diferença entre um erro assíncrono e um valor retornado?
- Por que um teste com `.then()` sem espera pode terminar cedo?
- Qual seria o efeito de colocar um único `try/catch` em volta de todo o laço?
- Qual é a sequência exata de eventos para Maria, Paula e Bruna?

Este guia apoia a compreensão e a revisão do código. Não representa uma declaração de domínio do estudante nem uma execução dos testes.
