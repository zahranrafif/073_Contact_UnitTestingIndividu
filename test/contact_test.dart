import 'package:flutter_test/flutter_test.dart';
import 'package:contacts_app/contact.dart';

void main() {
  group('Contact Tests', () {
    test('Create Contact', () {
      final Contact contact =
          Contact(name: 'Zahran Rafif', contact: '123456789');

      expect(contact.name, 'Zahran Rafif');
      expect(contact.contact, '123456789');
    });

    test('Create Contact', () {
      final Contact contact = Contact(name: 'Aldy', contact: '123456789');

      expect(contact.name, 'Aldy');
      expect(contact.contact, '123456789');
    });

    test('Update Contact', () {
      final Contact contact =
          Contact(name: 'Zahran Rafif', contact: '123456789');

      contact.name = 'Rafif Zahran';
      contact.contact = '987654321';

      expect(contact.name, 'Rafif Zahran');
      expect(contact.contact, '987654321');
    });
  });
}
