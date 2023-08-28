import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/details/components/buy_and_descrp_button.dart';
import 'package:plant_app/screens/details/components/image_and_icons.dart';
import 'package:plant_app/screens/details/components/title_and_price.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const ImageAndIcons(),
          const TitleAndPrice(
            title: "Angelica",
            country: "Russia",
            price: 440,
          ),
          const SizedBox(height: kDefaultPaddin),
          BottomButton(
            buytext: "Buy Now",
            descrptext: "Description",
            press: () {},
          ),
        ],
      ),
    );
  }
}
