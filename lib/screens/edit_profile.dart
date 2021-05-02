import 'package:PetKonnect/widgets/editProfileScreen/edit_profile_body_layout.dart';
import 'package:flutter/material.dart';

class EditProfile extends StatelessWidget {
  static const routeName = "/edit-profile";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.0),
        child: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            "Edit Profile",
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 26,
            ),
          ),
          leading: Padding(
            padding: const EdgeInsets.only(left: 18.0),
            child: IconButton(
              icon: Icon(Icons.arrow_back_ios_rounded),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ),
        ),
      ),

      body: EditProfileBodyLayout(),
    );
  }
}
