import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart'
    show FontAwesomeIcons;

import 'package:basic_ecommerce/widgets/price_button_widget.dart';

import '../widgets/button_bottom_widget.dart';

class EcommerceScreen extends StatelessWidget {
  const EcommerceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          backgroundColor: Colors.white,
          elevation: 0),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            title(),
            plans(),
            Column(
              children: [
                paymentMethods(FontAwesomeIcons.paypal, 'Paypal'),
                paymentMethods(FontAwesomeIcons.googlePay, 'Google pay'),
                paymentMethods(FontAwesomeIcons.applePay, 'Apple play')
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [BottomButton()],
      ),
    );
  }

  Widget title() {
    return Container(
      alignment: Alignment.center,
      child: const Text(
        'Choose your plan',
        style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget paymentMethods(IconData icon, String text) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.withOpacity(0.2)),
          borderRadius: BorderRadius.circular(20)),
      child: ListTile(
        onTap: () => {},
        contentPadding: const EdgeInsets.all(10),
        leading: Icon(
          icon,
          color: Colors.indigo,
          size: 30,
        ),
        title: Text(text),
        trailing: const Icon(
          Icons.keyboard_arrow_right_outlined,
          size: 40,
        ),
      ),
    );
  }

  Widget plans() {
    List<PriceButton> priceButton = const [
      PriceButton(price: 'Free', timePeriod: '7 days'),
      PriceButton(price: '\$450', timePeriod: 'Per week'),
      PriceButton(price: '\$900', timePeriod: 'Per month', selected: true),
      PriceButton(price: '\$2000', timePeriod: 'Lifetime')
    ];

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 30.0),
      height: ((priceButton.length / 2) * 80) + 1,
      child: GridView.count(
        physics: const NeverScrollableScrollPhysics(),
        crossAxisCount: 2,
        childAspectRatio: 2.5,
        crossAxisSpacing: 10,
        mainAxisSpacing: 15,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        children: priceButton,
      ),
    );
  }
}
