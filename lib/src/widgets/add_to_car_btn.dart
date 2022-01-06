import 'package:flutter/material.dart';
import 'package:shoes_app_ui/src/widgets/primary_btn.dart';

typedef void AddToCart();

class AddToCartBtn extends StatelessWidget {
  final double ammount;
  final AddToCart addToCar;

  const AddToCartBtn({Key? key, required this.ammount, required this.addToCar})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        width: double.infinity,
        height: 80,
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              '\$$ammount',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            PrimaryButton(text: "Add to cart")
          ],
        ),
      ),
    );
  }
}
