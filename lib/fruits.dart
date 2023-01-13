import 'package:flutter/cupertino.dart';

List<String> _fruits = [
  "https://images.healthshots.com/healthshots/en/uploads/2021/12/17141649/red-fruits-770x433.jpg",
  "https://www.healthshots.com/wp-content/uploads/2020/07/berries-1-627x354.jpg",
  "https://www.healthshots.com/wp-content/uploads/2020/10/pomegranate-1-627x354.jpg",
  "https://images.healthshots.com/healthshots/en/uploads/2021/01/29184922/health-benefits-of-grapes-627x354.jpg",
];

List<String> _fruitnames = ["Apple", "orange", "Banana", "Kiwi"];

List<String> _price = [
  "₹10",
  "₹10",
  "₹10",
  "₹10",
  "₹10",
];

class Fruits extends StatelessWidget {
  //const Fruits({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context, int i) {
        return Column(
          children: [
            
          ],
        );
      },
    );
  }
}
