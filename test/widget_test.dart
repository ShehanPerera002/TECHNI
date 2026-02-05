import 'package:flutter_test/flutter_test.dart';
import 'package:techniworker/app/techni_worker_app.dart';

void main() {
  testWidgets('App shows welcome text', (WidgetTester tester) async {
    await tester.pumpWidget(const TechniWorkerApp());

    // Let navigation/first frame settle (good practice)
    await tester.pumpAndSettle();

    expect(find.text('TECHNI'), findsOneWidget);
  });
}
