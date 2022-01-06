import 'package:flutter/material.dart';
import 'package:shoes_app_ui/src/widgets/custom_widgets.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: CustomAppBar(text: "For you"),
      body: SafeArea(
        child: Column(
          children: [
            CustomAppBar(text: "For you"),
            SizedBox(height: 20.0),
            Expanded(
              child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      ShoePreview(),
                      SizedBox(height: 20.0),
                      ShoeDescription(
                        title: "Nike Air Max 720",
                        description:
                            "The Nike Air Max 720 goes bigger than ever before with Nike's taller Air unit yet, offering more air underfoot for unimaginable, all-day comfort. Has Air Max gone too far? We hope so.",
                      ),
                    ],
                  )),
            ),
            AddToCartBtn(
              ammount: 180,
              addToCar: () {},
            )
          ],
        ),
      ),
    );
  }
}
