import 'package:flutter_test/flutter_test.dart';

void main() {
  late Map<String, List<double>> alunos;

  // Recria os dados para que um teste não dependa da execução do anterior.
  setUp(() {
    alunos = {
      'Maria': [8.0, 9.0],
      'Bruna': [7.0, 7.0],
      'Carla': [10.0, 9.0],
    };
  });

  test('adiciona Elena com putIfAbsent', () {
    alunos.putIfAbsent('Elena', () => [8.0, 9.0]);
    expect(alunos.containsKey('Elena'), isTrue);
    expect(alunos['Elena'], [8.0, 9.0]);
  });

  test('adiciona outro Map', () {
    alunos.addAll({'Luiza': [8.0, 9.0]});
    expect(alunos.containsKey('Luiza'), isTrue);
  });

  test('verifica as chaves e os valores', () {
    expect(alunos.keys, containsAll(['Maria', 'Bruna', 'Carla']));
    expect(alunos.values, contains([8.0, 9.0]));
  });

  test('remove Bruna', () {
    alunos.remove('Bruna');
    expect(alunos.containsKey('Bruna'), isFalse);
  });

  test('atualiza Carla', () {
    alunos.update('Carla', (_) => [8.0, 9.0]);
    expect(alunos['Carla'], [8.0, 9.0]);
  });

  test('percorre o Map e calcula a soma', () {
    var soma = 0.0;
    alunos.forEach((nome, notas) {
      for (final nota in notas) {
        soma += nota;
      }
    });
    expect(soma, 50.0);
  });

  // Percorre o Map e divide a soma pela quantidade de notas de cada aluno.
  test('Calcular medias', () {
    alunos.putIfAbsent('Elena', () => [8.0, 9.0]);
    alunos.addAll({'Luiza': [8.0, 9.0]});
    alunos.remove('Bruna');
    alunos.update('Carla', (_) => [8.0, 9.0]);

    final medias = <String, double>{};
    alunos.forEach((nome, notas) {
      var soma = 0.0;
      for (final nota in notas) {
        soma += nota;
      }
      medias[nome] = soma / notas.length;
    });

    expect(medias, {
      'Maria': 8.5,
      'Carla': 8.5,
      'Elena': 8.5,
      'Luiza': 8.5,
    });
  });
}
