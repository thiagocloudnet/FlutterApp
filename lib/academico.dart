// Adaptado do roteiro da Semana 5: herança, encapsulamento e mixin.
abstract class Pessoa {
  int? _id;
  String nome;

  Pessoa(this.nome);

  int get id => _id ?? (throw StateError('Identificador não informado.'));

  set id(int valor) {
    if (valor <= 0) throw ArgumentError('Identificador deve ser positivo.');
    _id = valor;
  }
}

mixin Ano {
  int? _ano;
  int get ano => _ano ?? (throw StateError('Ano não informado.'));

  set ano(int valor) {
    if (valor <= 0) throw ArgumentError('Ano deve ser positivo.');
    _ano = valor;
  }
}

class Aluno extends Pessoa with Ano {
  Aluno(String nome, int ano) : super(nome) {
    this.ano = ano;
  }
}

class Professor extends Pessoa {
  Professor(String nome) : super(nome);
}

class Disciplina {
  String nome;
  Disciplina(this.nome);
}

class Turma with Ano {
  Disciplina disciplina;
  Professor professor;
  final List<Aluno> _alunos = [];

  Turma(this.disciplina, this.professor, int ano) {
    this.ano = ano;
  }

  List<Aluno> get alunos => List.unmodifiable(_alunos);

  void matricular(Aluno aluno) {
    // A matrícula só é aceita quando aluno e turma pertencem ao mesmo ano.
    if (aluno.ano != ano) throw ArgumentError('Ano deve ser o mesmo.');
    if (_alunos.contains(aluno)) throw ArgumentError('Aluno já matriculado.');
    _alunos.add(aluno);
  }
}

class Historico extends Turma {
  final Map<Aluno, List<double>> notas = {};

  Historico(Disciplina disciplina, Professor professor, int ano)
      : super(disciplina, professor, ano);

  @override
  void matricular(Aluno aluno) {
    super.matricular(aluno);
    notas[aluno] = [];
  }

  double media(Aluno aluno) {
    final valores = notas[aluno];
    if (valores == null) throw ArgumentError('Aluno não matriculado.');
    if (valores.isEmpty) return 0;
    // Divide pela quantidade de notas deste aluno, não de alunos da turma.
    return valores.reduce((soma, nota) => soma + nota) / valores.length;
  }

  bool isAprovado(Aluno aluno) => media(aluno) > 6;
}
