import 'package:flutter_test/flutter_test.dart';

void main() {
  late List<int> numeros;

  // Recria os dados para que um teste não dependa da execução do anterior.
  setUp(() {
    numeros = [1, 2, 3];
  });

  test('adiciona um elemento com add', () {
    numeros.add(4);
    expect(numeros, [1, 2, 3, 4]);
  });

  test('adiciona outra lista com addAll', () {
    numeros.addAll([4, 5]);
    expect(numeros, [1, 2, 3, 4, 5]);
  });

  test('insere um elemento em uma posicao', () {
    numeros.insert(1, 10);
    expect(numeros, [1, 10, 2, 3]);
  });

  test('remove um elemento', () {
    numeros.remove(2);
    expect(numeros, [1, 3]);
  });

  test('remove um elemento pela posicao', () {
    numeros.removeAt(1);
    expect(numeros, [1, 3]);
  });

  test('informa tamanho e estado da lista', () {
    expect(numeros.length, 3);
    expect(numeros.isEmpty, isFalse);
    expect(numeros.isNotEmpty, isTrue);
    numeros.clear();
    expect(numeros.isEmpty, isTrue);
  });

  test('percorre a lista invertida', () {
    expect(numeros.reversed.toList(), [3, 2, 1]);
  });

  test('ordena a lista', () {
    numeros = [3, 1, 2];
    numeros.sort();
    expect(numeros, [1, 2, 3]);
  });

  test('percorre a lista com for-in', () {
    var soma = 0;
    for (final numero in numeros) {
      soma += numero;
    }
    expect(soma, 6);
  });

  // map transforma os valores; where seleciona os que atendem à condição.
  test('transforma a lista com map', () {
    final dobro = numeros.map((numero) => numero * 2).toList();
    expect(dobro, [2, 4, 6]);
  });

  test('filtra a lista com where', () {
    final impares = numeros.where((numero) => numero.isOdd).toList();
    expect(impares, [1, 3]);
  });
}
