import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_app/assincrono.dart';

void main() {
  group('Programação assíncrona', () {
    test('process retorna um Future com resultado zero', () async {
      final resultado = process();
      expect(resultado, isA<Future<int>>());
      expect(await resultado, 0);
    });

    test('busca as notas de Maria', () async {
      expect(await search('Maria'), [8.0, 9.0]);
    });

    test('busca inexistente produz erro assíncrono', () async {
      await expectLater(search('Paula'), throwsArgumentError);
    });

    test('contagem emite um, dois e três antes de terminar', () async {
      await expectLater(count(), emitsInOrder([1, 2, 3, emitsDone]));
    });

    test('médias continuam após erro no nome intermediário', () async {
      // O teste aguarda todos os eventos; falhas tardias não ficam soltas.
      await expectLater(
        media(['Maria', 'Paula', 'Bruna']),
        emitsInOrder([8.5, emitsError(isA<ArgumentError>()), 7.0, emitsDone]),
      );
    });

    test('lista de nomes vazia encerra sem emitir valores', () async {
      await expectLater(media([]), emitsDone);
    });
  });
}
