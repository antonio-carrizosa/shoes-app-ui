import 'package:flutter/material.dart';
import 'package:shoes_app_ui/src/widgets/custom_widgets.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              ShoePreview(fullScreen: true),
              Positioned(
                  top: 100,
                  left: 10,
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.arrow_back_ios),
                    color: Colors.white,
                  ))
            ],
          ),
          Expanded(
              child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 20),
                ShoeDescription(
                  title: "Nike Air Max 720",
                  description:
                      "The Nike Air Max 720 goes bigger than ever before with Nike's taller Air unit yet, offering more air underfoot for unimaginable, all-day comfort. Has Air Max gone too far? We hope so.",
                ),
                const SizedBox(height: 20),
                _BuyNow(),
                const SizedBox(height: 20),
                _ColorChooser(),
                const SizedBox(height: 20),
                _ItemActions()
              ],
            ),
          ))
        ],
      ),
    );
  }
}

class _ItemActions extends StatelessWidget {
  const _ItemActions({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _ButtonAction(
                icon: Icon(Icons.favorite, size: 25, color: Colors.red)),
            _ButtonAction(
                icon: Icon(Icons.shopping_cart_outlined,
                    size: 25, color: Colors.grey.shade400)),
            _ButtonAction(
                icon: Icon(Icons.settings,
                    size: 25, color: Colors.grey.shade400)),
          ],
        ));
  }
}

class _ButtonAction extends StatelessWidget {
  final Icon icon;
  const _ButtonAction({
    required this.icon,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 55,
      height: 55,
      decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                offset: Offset(0, 8),
                spreadRadius: 0.5,
                blurRadius: 5)
          ]),
      child: icon,
    );
  }
}

class _BuyNow extends StatelessWidget {
  const _BuyNow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('\$180.0',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
          PrimaryButton(text: "Buy now", height: 40, width: 120)
        ],
      ),
    );
  }
}

class _ColorChooser extends StatelessWidget {
  const _ColorChooser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
              child: Stack(
            children: [
              Positioned(left: 3 * 35, child: _ColorButton(Color(0xffc6d642))),
              Positioned(left: 2 * 35, child: _ColorButton(Color(0xffffad29))),
              Positioned(left: 1 * 35, child: _ColorButton(Color(0xff2099f1))),
              _ColorButton(Color(0xff364d56)),
            ],
          )),
          PrimaryButton(
              text: "More related items",
              color: Color(0xFFffc675),
              height: 30,
              width: 150)
        ],
      ),
    );
  }
}

class _ColorButton extends StatelessWidget {
  final Color color;

  const _ColorButton(this.color, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 45,
      height: 45,
      decoration: BoxDecoration(color: color, shape: BoxShape.circle),
    );
  }
}
