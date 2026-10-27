// Exemplos da Semana 6: Future, async/await e Stream.
final Map<String, List<double>> alunos = {
  'Maria': [8.0, 9.0],
  'Bruna': [7.0, 7.0],
  'Carla': [10.0, 9.0],
};

Future<int> process() async {
  await Future<void>.delayed(const Duration(seconds: 5));
  return 0;
}

Future<List<double>?> search(String key) async {
  await Future<void>.delayed(const Duration(seconds: 2));
  final notas = alunos[key];
  if (notas == null) throw ArgumentError('Aluno não encontrado.');
  return List<double>.of(notas);
}

Stream<int> count() async* {
  for (int i = 1; i <= 3; i++) {
    await Future<void>.delayed(const Duration(seconds: 1));
    yield i;
  }
}

Stream<double> media(List<String> nomes) async* {
  for (final nome in nomes) {
    try {
      final notas = await search(nome);
      if (notas == null || notas.isEmpty) {
        throw ArgumentError('Aluno sem notas.');
      }
      yield notas.reduce((soma, nota) => soma + nota) / notas.length;
    } on ArgumentError catch (erro, pilha) {
      // Emite o erro e continua: Paula não impede o resultado de Bruna.
      yield* Stream<double>.error(erro, pilha);
    }
  }
}
