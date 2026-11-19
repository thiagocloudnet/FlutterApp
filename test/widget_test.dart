import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_app/main.dart';

void main() {
  testWidgets('Renderiza tela inicial do projeto Flutter + Firebase', (WidgetTester tester) async {
    await tester.pumpWidget(const MobileApp());
    expect(find.text('Desenvolvimento Mobile — UESB'), findsOneWidget);
    expect(find.text('Projeto Flutter + Google Firebase'), findsOneWidget);
  });
}
