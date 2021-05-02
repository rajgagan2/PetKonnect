import 'package:flutter/material.dart';

class PostsLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GridView.count(
          padding: const EdgeInsets.all(5.0),
          shrinkWrap: true,
          crossAxisCount: 3,
          childAspectRatio: 116/116,
          crossAxisSpacing: 4,
          mainAxisSpacing: 6,
          physics: new NeverScrollableScrollPhysics(),
          children: [
            Image.asset("assets/images/animals/socialmedia_img_6.png", fit: BoxFit.fitWidth,),
            Image.asset("assets/images/animals/socialmedia_img_8.png",fit: BoxFit.fitWidth),
            Image.asset("assets/images/animals/socialmedia_img_9.png",fit: BoxFit.fitWidth),
            Image.asset("assets/images/animals/socialmedia_img_8.png",fit: BoxFit.fitWidth),
            Image.asset("assets/images/animals/socialmedia_img_9.png",fit: BoxFit.fitWidth),
            Image.asset("assets/images/animals/socialmedia_img_6.png",fit: BoxFit.fitWidth)
          ],
        ),
      ],
    );
  }
}
