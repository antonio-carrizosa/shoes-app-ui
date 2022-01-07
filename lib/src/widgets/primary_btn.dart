import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final String text;
  final double height;
  final double width;
  final Color? color;
  const PrimaryButton(
      {Key? key,
      required this.text,
      this.width = 150,
      this.height = 50,
      this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: width,
      height: height,
      decoration: BoxDecoration(
          color: color ?? Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(50)),
      child: Text(text, style: TextStyle(color: Colors.white)),
    );
  }
}
