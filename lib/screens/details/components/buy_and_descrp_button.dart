import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({
    super.key, required this.buytext, required this.descrptext, required this.press,
  });

  final String buytext, descrptext;
  final Function() press;
  

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        SizedBox(
          width: size.width / 2,
          height: 84,
          child: ElevatedButton(
            style: const ButtonStyle(
              shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                  ),
                ),
              ),
              backgroundColor: MaterialStatePropertyAll(kPrimaryColor),
            ),
            onPressed: () {},
            child: const Text(
              "Buy Now",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
        ),
        Expanded(
          child: ElevatedButton(
            style: const ButtonStyle(
                elevation: MaterialStatePropertyAll(0),
                backgroundColor: MaterialStatePropertyAll(kBackgroundColor)),
            onPressed: () {},
            child: const Text("Deccription",
                style: TextStyle(color: Colors.black)),
          ),
        ),
      ],
    );
  }
}
