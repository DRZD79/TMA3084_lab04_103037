import 'package:flutter/material.dart';

class FriesScreen extends StatelessWidget {
  const FriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: const Text('Box of Fries'),
      ),
      body: Center(
        child: Column(
          children: [
            Image.asset('assets/images/fries.png', width: 200),
            const Text(
              'Box of Fries is a serving of crispy '
              'golden potato fries.',
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, 'summary');
              },
              child: const Text('Order Now'),
            ),
          ],
        ),
      ),
    );
  }
}
