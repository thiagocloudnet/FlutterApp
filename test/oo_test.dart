import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_app/academico.dart';

void main() {
  late Professor professor;
  late Historico historico;
  late Aluno maria;

  setUp(() {
    professor = Professor('Edilson')..id = 1;
    historico = Historico(Disciplina('Flutter'), professor, 2026);
    maria = Aluno('Maria', 2026)..id = 2;
  });

  test('turma possui professor e matricula aluno do mesmo ano', () {
    historico.matricular(maria);
    expect(historico.professor, same(professor));
    expect(historico.alunos, [maria]);
    expect(historico.media(maria), 0);
    expect(historico.isAprovado(maria), isFalse);
  });

  test('identificador e ano devem ser positivos', () {
    for (final valor in [0, -1]) {
      expect(() => maria.id = valor, throwsArgumentError);
      expect(() => maria.ano = valor, throwsArgumentError);
    }
    expect(maria.id, 2);
    expect(maria.ano, 2026);
  });

  test('rejeita ano diferente sem incluir aluno no histórico', () {
    final paula = Aluno('Paula', 2025);
    expect(() => historico.matricular(paula), throwsArgumentError);
    expect(historico.alunos, isEmpty);
    expect(historico.notas, isEmpty);
  });

  test('média usa o número de notas e aprovação exige mais de seis', () {
    historico.matricular(maria);
    historico.notas[maria]!.addAll([8, 9]);
    historico.matricular(Aluno('Bruna', 2026));
    expect(historico.media(maria), 8.5);
    expect(historico.isAprovado(maria), isTrue);
    historico.notas[maria] = [6, 6];
    expect(historico.isAprovado(maria), isFalse);
    historico.notas[maria] = [5, 5];
    expect(historico.isAprovado(maria), isFalse);
    historico.notas[maria] = [6, 6.2];
    expect(historico.isAprovado(maria), isTrue);
  });

  test('matrícula repetida não apaga notas', () {
    historico.matricular(maria);
    historico.notas[maria]!.add(9);
    expect(() => historico.matricular(maria), throwsArgumentError);
    expect(historico.notas[maria], [9]);
  });

  test('consulta de aluno não matriculado informa erro', () {
    expect(() => historico.media(maria), throwsArgumentError);
  });
}
