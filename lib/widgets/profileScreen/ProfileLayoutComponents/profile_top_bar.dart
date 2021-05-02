import 'package:flutter/material.dart';

class ProfileTopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'Deepti_priya',
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
        ),
        Row(
          children: [
            Image.asset(
              "assets/images/profilescreen/add_post@3x.png",
              height: 28,
            ),
            SizedBox(
              width: 18,
            ),
            Image.asset(
              "assets/images/profilescreen/message@3x.png",
              height: 35,
            ),
            SizedBox(
              width: 18,
            ),
            Image.asset(
              "assets/images/profilescreen/menu_hamburger@3x.png",
              height: 30,
            )
          ],
        )
      ],
    );
  }
}
