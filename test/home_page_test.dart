import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:contacts_app/home_page.dart';

void main() {
  testWidgets('Test Contact Operations in HomePage',
      (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MaterialApp(home: HomePage()));

    // Menambahkan kontak
    await tester.enterText(find.byType(TextField).first, 'John Doe');
    await tester.enterText(find.byType(TextField).last, '123456789');
    await tester.tap(find.text('Save'));
    await tester.pump();

    // Verifikasi apakah kontak telah ditambahkan
    expect(find.text('John Doe'), findsOneWidget);
    expect(find.text('123456789'), findsOneWidget);

    // Mengedit kontak
    await tester.tap(find.byIcon(Icons.edit));
    await tester.pump();

    // Perbarui kontak
    await tester.enterText(find.byType(TextField).first, 'Jane Doe');
    await tester.enterText(find.byType(TextField).last, '987654321');
    await tester.tap(find.text('Update'));
    await tester.pump();

    // Verifikasi apakah kontak diperbarui
    expect(find.text('Jane Doe'), findsOneWidget);
    expect(find.text('987654321'), findsOneWidget);

    // Hapus kontak
    await tester.tap(find.byIcon(Icons.delete));
    await tester.pump();

    // Verifikasi apakah kontak telah dihapus
    expect(find.text('Jane Doe'), findsNothing);
    expect(find.text('987654321'), findsNothing);
  });
}
