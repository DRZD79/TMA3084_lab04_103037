import 'package:flutter/material.dart';

import 'order.dart';

const String itemName = 'Vegetable Pizza';
const double itemUnitPrice = 12.50;
const int itemQuantity = 2;

class OrderSummaryScreen extends StatelessWidget {
  const OrderSummaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double total = orderTotal(
      unitPrice: itemUnitPrice,
      quantity: itemQuantity,
    );

    return Scaffold(
      appBar: AppBar(title: const Text('Order Summary')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Item: $itemName'),
            const Text('Quantity: $itemQuantity'),
            Text('Total: RM ${total.toStringAsFixed(2)}'),
            const SizedBox(height: 16),
            OutlinedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Back'),
            ),
          ],
        ),
      ),
    );
  }
}
