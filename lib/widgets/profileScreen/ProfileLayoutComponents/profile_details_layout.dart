import 'package:PetKonnect/screens/edit_profile.dart';
import 'package:flutter/material.dart';

class ProfileDetailsLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _columnOne(),
        _columnTwo(context),
      ],
    );
  }

  Widget _columnOne() {
    return Expanded(
      flex: 7,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 10,
          ),
          Stack(
            alignment: Alignment.bottomRight,
            fit: StackFit.passthrough,
            children: [
              CircleAvatar(
                radius: 45,
                backgroundColor: Colors.white,
                backgroundImage: AssetImage("assets/images/profile_img@2x.png"),
              ),
              CircleAvatar(
                radius: 15,
                backgroundColor: Colors.transparent,
                backgroundImage:
                    AssetImage("assets/images/profilescreen/edit@2x.png"),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Deepti Priya",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 14,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "www.petowner.com",
            style: TextStyle(
              color: Colors.blue,
              fontSize: 14,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "deepti@gmail.com",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }

  Widget _columnTwo(BuildContext context) {
    return Expanded(
        flex: 8,
        child: Column(
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _column2TextBox("20", "Posts"),
                  SizedBox(
                    width: 15,
                  ),
                  _column2TextBox("783", "Followers"),
                  SizedBox(
                    width: 15,
                  ),
                  _column2TextBox("129", "Following"),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
              child: TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(EditProfile.routeName);
                },
                child: Text("Edit Profile"),
                style: TextButton.styleFrom(
                  side: BorderSide(color: Colors.orange, width: 1),
                ),
              ),
            ),
          ],
        ));
  }

  Widget _column2TextBox(String number, String title) {
    return Column(
      children: [
        Text(
          number,
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w800, color: Colors.orange),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          title,
          style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
