import 'package:flutter/material.dart';
import 'package:shop_app/screens/home/home_screen.dart';

class BuyNow extends StatelessWidget {
  const BuyNow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buy Now'),
      ),
      body: Row(
        children: <Widget>[
          Container(
            height: 50,
            width: 58,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              border: Border.all(color: Colors.black),
            ),
          ),
          Row(
            children: [
              ElevatedButton(
                child: const Text('Open route'),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              HomeScreen())); // Navigate to second route when tapped.
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
