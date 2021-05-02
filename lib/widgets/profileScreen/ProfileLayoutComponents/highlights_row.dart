import 'package:PetKonnect/screens/mypet_profile_screen.dart';
import 'package:flutter/material.dart';

class HighlightsRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color lightGrey = Color.fromRGBO(51, 51, 51, 0.3);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 20,
        ),
        Text(
          "My Pets",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          children: [
            _petImageCard("assets/images/animals/socialmedia_img_6.png", context),
            SizedBox(
              width: 15,
            ),
            _petImageCard("assets/images/animals/socialmedia_img_8.png", context),
            SizedBox(
              width: 15,
            ),
            _petImageCard("assets/images/animals/socialmedia_img_9.png", context)
          ],
        )
      ],
    );
  }

  Widget _petImageCard(String url, BuildContext context) {
    return Card(
      shape: CircleBorder(),
      elevation: 3,
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).pushNamed(MyPetProfileScreen.routeName);
        },
        child: CircleAvatar(
          radius: 32,
          backgroundImage: AssetImage(url),
        ),
      ),
    );
  }
}
