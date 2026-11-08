import 'package:flutter_test/flutter_test.dart';
import 'package:lab_04/order.dart';

void main() {
  group('orderTotal', () {
    test('multiplies the unit price by the quantity', () {
      expect(orderTotal(unitPrice: 12.5, quantity: 2), 25.0);
    });

    test('is zero when the quantity is zero', () {
      expect(orderTotal(unitPrice: 12.5, quantity: 0), 0.0);
    });

    test('rejects a negative quantity', () {
      expect(
        () => orderTotal(unitPrice: 12.5, quantity: -1),
        throwsArgumentError,
      );
    });
  });
}
