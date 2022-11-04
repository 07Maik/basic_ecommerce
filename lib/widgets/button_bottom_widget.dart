import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {},
      style: OutlinedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: Colors.indigo,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
          )),
      child: Container(
        width: 300,
        height: 65,
        alignment: Alignment.center,
        child: const Text(
          'Continue',
        ),
      ),
    );
  }
}
