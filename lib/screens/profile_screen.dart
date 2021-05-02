import 'package:PetKonnect/widgets/profileScreen/profile_layout.dart';
import 'package:PetKonnect/widgets/profileScreen/ProfileLayoutComponents/top_app_bar.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  static const routeName = "/profile-screen";
  @override
  Widget build(BuildContext context) {
    Color lightGrey = Color.fromRGBO(51, 51, 51, 0.3);

    return Scaffold(
      body: Container(
        constraints: BoxConstraints(
            maxHeight: MediaQuery.of(context).size.height,
            maxWidth: MediaQuery.of(context).size.width),
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                child: TopAppBar(),
              ),
            ),
            Expanded(
              flex: 7,
              child: Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: lightGrey,
                      offset: Offset(0.0, 1.0), //(x,y)
                      blurRadius: 6.0,
                    ),
                  ],
                ),
                child: ProfileLayout(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
