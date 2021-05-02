import 'dart:ui';

import 'package:flutter/material.dart';

class TopAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: new Image.asset(
                    "assets/images/logo.png",
                    fit: BoxFit.contain,
                    height: 40,
                    width: 130,
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              CircleAvatar(
                radius: 15,
                backgroundImage: AssetImage("assets/images/profile_img@2x.png"),
              ),
              SizedBox(
                width: 20,
              ),
              Image.asset(
                "assets/images/notifications@3x.png",
                height: 25,
              ),
              SizedBox(
                width: 30,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
