import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/home/components/featured_plants.dart';
import 'package:plant_app/screens/home/components/header_with_searchbox.dart';
import 'package:plant_app/screens/home/components/recomends_plants.dart';
import 'package:plant_app/screens/home/components/title_with_more_btn.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(text: "Recommended", press: () {}),
          const RecomendsPlants(),
          TitleWithMoreBtn(text: "Feautured Plants", press: () {}),
          const FeaturedPlants(),
          const SizedBox(
            height: kDefaultPaddin,
          ),
        ],
      ),
    );
  }
}

