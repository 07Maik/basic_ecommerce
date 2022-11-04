import 'package:flutter/material.dart';

class PriceButton extends StatelessWidget {
  final String timePeriod;
  final String price;
  final bool selected;

  const PriceButton({
    Key? key,
    required this.price,
    required this.timePeriod,
    this.selected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final priceColor = selected ? Colors.white : Colors.black;
    final backgroundColor = selected ? Colors.indigo : Colors.white;

    return OutlinedButton(
        onPressed: () {},
        style: OutlinedButton.styleFrom(
          backgroundColor: backgroundColor,
          foregroundColor: Colors.indigo,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              price,
              style: TextStyle(
                  color: priceColor, fontWeight: FontWeight.bold, fontSize: 15),
            ),
            Text(
              timePeriod,
              style: const TextStyle(color: Colors.grey)
            )
          ],
        ));
  }
}
