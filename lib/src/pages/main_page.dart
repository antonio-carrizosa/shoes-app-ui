import 'package:flutter/material.dart';
import 'package:shoes_app_ui/src/models/shoe.dart';
import 'package:shoes_app_ui/src/pages/details_page.dart';
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
            const SizedBox(height: 20.0),
            Expanded(
              child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () => Navigator.push(context,
                            MaterialPageRoute(builder: (_) => DetailsPage())),
                        child: Hero(
                          tag: "shoe-preview",
                          child: ShoePreview(),
                        ),
                      ),
                      const SizedBox(height: 20.0),
                      ShoeDescription(
                        title: Shoe.shoe.model,
                        description: Shoe.shoe.description,
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
