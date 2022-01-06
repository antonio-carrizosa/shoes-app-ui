import 'package:flutter/material.dart';

class ShoePreview extends StatelessWidget {
  const ShoePreview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
      child: Container(
        width: double.infinity,
        height: 430,
        decoration: BoxDecoration(
          color: Theme.of(context).accentColor,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Column(
          children: [
            _ShoeImage(),
            _ShoeSizes(),
          ],
        ),
      ),
    );
  }
}

class _ShoeImage extends StatelessWidget {
  const _ShoeImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(50.0),
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            right: 0,
            child: _ShoeShadow(),
          ),
          Image.asset("assets/img/negro.png", fit: BoxFit.contain),
        ],
      ),
    );
  }
}

class _ShoeSizes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _ShoeSize(7),
          _ShoeSize(7.5),
          _ShoeSize(8),
          _ShoeSize(8.5),
          _ShoeSize(9),
          _ShoeSize(9.5),
        ],
      ),
    );
  }
}

class _ShoeSize extends StatelessWidget {
  final double size;

  _ShoeSize(this.size);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isCurrent = size == 9;

    return Container(
      alignment: Alignment.center,
      width: 40,
      height: 40,
      decoration: BoxDecoration(
          color: isCurrent ? theme.primaryColor : Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            if (isCurrent)
              BoxShadow(
                  color: theme.primaryColor,
                  offset: Offset(0, 5),
                  blurRadius: 10,
                  spreadRadius: 2)
          ]),
      child: Text(
        '${size.toString().replaceAll('.0', "")}',
        style: TextStyle(
            fontSize: 16,
            color: isCurrent ? Colors.white : Theme.of(context).primaryColor,
            fontWeight: FontWeight.bold),
      ),
    );
  }
}

class _ShoeShadow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -0.5,
      child: Container(
        width: 230,
        height: 120,
        decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(100), boxShadow: [
          BoxShadow(
            color: Theme.of(context).primaryColorDark,
            blurRadius: 40,
          )
        ]),
      ),
    );
  }
}
