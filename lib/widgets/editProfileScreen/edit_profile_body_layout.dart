import 'package:flutter/material.dart';

class EditProfileBodyLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: double.infinity,
        child: Column(
          children: [
            Center(
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/profile_img@2x.png',
                    width: 90,
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Text(
                    'Change Profile Photo',
                    style: TextStyle(
                        color: Colors.orange,
                        fontWeight: FontWeight.w500,
                        fontSize: 17),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 30.0, horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Username",
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey),
                    ),
                    TextFormField(
                      keyboardType: TextInputType.text,
                      initialValue: "Deepti_Priya",
                      onChanged: null,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Name",
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey),
                    ),
                    TextFormField(
                      keyboardType: TextInputType.text,
                      initialValue: "Deepti Priya",
                      onChanged: null,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Website",
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey),
                    ),
                    TextFormField(
                      keyboardType: TextInputType.text,
                      initialValue: "www.petowner.com",
                      onChanged: null,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Email",
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey),
                    ),
                    TextFormField(
                      keyboardType: TextInputType.text,
                      initialValue: "deepti@gmail.com",
                      onChanged: null,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
